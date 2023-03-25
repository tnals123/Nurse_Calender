import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/initEvent.dart';

class MyWidgetsBindingObserver extends WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      Get.find<initEventController>().setPreference();
      // 앱이 종료되기 전에 실행할 코드
    }
  }
}
