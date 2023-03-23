import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lol_blackbox/controller/initEvent.dart';

class CalenderController extends GetxController {
  Set<int> selectedIndexes = Set<int>().obs;
  final key = GlobalKey();
  final RxSet<_Foo> _trackTaped = Set<_Foo>().obs;
  initEventController initController = Get.find<initEventController>();
  int firstValue = 0;
  RxList temporArr = [].obs;
  RxList screenList = [].obs; //실제 화면에 띄우기 위한 배열
  RxList selectedIdx = [].obs;
  int selectedIndex = 0;

  void selectIndex(int index) {
    selectedIndexes.add(index);
    final selectLists = selectedIndexes.toList();
    selectLists.sort();
    selectedIdx = selectLists.obs;
    for (int i = 0; i < selectLists.length; i++) {
      temporArr.add(selectLists[i]);
    }
    print(temporArr);
    if (index > initController.maxIdx || index < initController.minIdx){
      _trackTaped.clear();
      selectedIndexes.clear();
      temporArr.clear();
      selectedIdx.clear();
    }
    // selectedIndexes = selectLists.toSet();
  }

  void clearSelection(PointerEvent event) {
    for (int i = 0; i < temporArr.length; i++) {
      screenList.add(temporArr[i]);
    }
    _trackTaped.clear();
    selectedIndexes.clear();
    temporArr.clear();
  }

  void detectTapedItem(PointerEvent event) {
      print(Get.find<initEventController>().days[Get.find<initEventController>().dayIdx.value]);
      screenList.clear();
      final RenderBox box =
          key.currentContext!.findAncestorRenderObjectOfType<RenderBox>()!;
      final result = BoxHitTestResult();
      Offset local = box.globalToLocal(event.position);
      if (box.hitTest(result, position: local)) {
        for (final hit in result.path) {
          final target = hit.target;
          if (target is _Foo && !_trackTaped.contains(target)) {
            if (_trackTaped.isEmpty) {
              firstValue = target.index;
              selectIndex(target.index);
              initController.dayIdx.value = target.index;
            }
            _trackTaped.add(target);
            selectIndex(target.index);
            for (var i = target.index - 1; i > firstValue; i--) {
              selectIndex(i);
            }
            for (var i = target.index; i < firstValue; i++) {
              selectIndex(i);
            }

          }

      }
    }
  }
}

class Foo extends SingleChildRenderObjectWidget {
  final int index;

  Foo({required Widget child, required this.index, Key? key})
      : super(child: child, key: key);

  @override
  _Foo createRenderObject(BuildContext context) {
    return _Foo(index);
  }

  @override
  void updateRenderObject(BuildContext context, _Foo renderObject) {
    renderObject..index = index;
  }
}

class _Foo extends RenderProxyBox {
  int index;
  _Foo(this.index);
}
