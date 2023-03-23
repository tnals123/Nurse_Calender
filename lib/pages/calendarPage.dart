import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lol_blackbox/controller/calenderController.dart';
import 'package:lol_blackbox/controller/initEvent.dart';

import '../components/image_data.dart';
import '../components/palette.dart';

class CalenderPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    initEventController init = Get.put(initEventController());
    CalenderController calender = Get.put(CalenderController());
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFF413A60),
        title: Text(
          "Calender",
          style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontFamily: "paybooc",
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        leadingWidth: 45,
        leading: Container(
            margin : const EdgeInsets.only(top: 10,),
            padding: const EdgeInsets.only(top: 10, right: 13, bottom: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF87D8CA).withOpacity(0.7),
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(50.0),
              ),
              border:
                  Border.all(color: const Color(0xFF87D8CA).withOpacity(0.7)),
            ),
            child: GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                child: SvgPicture.asset('assets/image/list.svg',
                    width: 20, height: 20))),
        actions: [
          Container(
              margin : const EdgeInsets.only(top: 10,),
              padding: const EdgeInsets.only(top: 10, left: 13, bottom: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFFF9751).withOpacity(0.7),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(50.0),
                ),
                border:
                    Border.all(color: const Color(0xFFFF9751).withOpacity(0.7)),
              ),
              child: GestureDetector(
                  onTap: () {
                    print("ㅋㅋㅋㅋㅋㅋ");
                  },
                  child: SvgPicture.asset('assets/image/plus.svg',
                      width: 25, height: 25))),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // 프로젝트에 assets 폴더 생성 후 이미지 2개 넣기
          // pubspec.yaml 파일에 assets 주석에 이미지 추가하기
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              // 현재 계정 이미지 set
              backgroundImage: AssetImage('assets/profile.png'),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: <Widget>[
              // 다른 계정 이미지[] set
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage('assets/profile2.png'),
              ),
              // CircleAvatar(
              //   backgroundColor: Colors.white,
              //   backgroundImage: AssetImage('assets/profile2.png'),
              // )
            ],
            accountName: const Text('GANGPRO'),
            accountEmail: const Text('gangpro@email.com'),
            onDetailsPressed: () {
              print('arrow is clicked');
            },
            decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.only(
                    bottomLeft: const Radius.circular(40.0),
                    bottomRight: const Radius.circular(40.0))),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.grey[850],
            ),
            title: const Text('Home'),
            onTap: () {
              print('Home is clicked');
            },
            trailing: const Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey[850],
            ),
            title: const Text('Setting'),
            onTap: () {
              print('Setting is clicked');
            },
            trailing: const Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: const Text('Q&A'),
            onTap: () {
              print('Q&A is clicked');
            },
            trailing: const Icon(Icons.add),
          ),
        ],
      )),
      backgroundColor: const Color(0xFF38324F), //Color(0xFF413A60),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  decoration: const BoxDecoration(color: Color(0xFF413A60)),
                  child: Column(
                    children: [
                      Container(
                        color: const Color(0xFF413A60),
                        height: 15,
                      ),
                    ],
                  ),
                ),
                //Color(0xFF413A60)

                Container(
                  color: const Color(0xFF413A60),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(width : 16),
                                  Text("Day", style: TextStyle(
                                      fontFamily: "noto",
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.7),
                                      fontWeight: FontWeight.w700)),
                                  Container(
                                    margin : const EdgeInsets.only(top : 10, left : 5),
                                    width: 10,
                                    height : 1.5,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFF665C).withOpacity(0.97),
                                      borderRadius:
                                      BorderRadius.circular(8),),
                                  ),
                                  const SizedBox(width : 5),

                                  Text("Evening", style: TextStyle(
                                      fontFamily: "noto",
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.7),
                                      fontWeight: FontWeight.w700)),
                                  Container(
                                    margin : const EdgeInsets.only(top : 10, left : 5),
                                    width: 10,
                                    height : 1.5,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF92FF76),
                                      borderRadius:
                                      BorderRadius.circular(8),),

                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Text("Night", style: TextStyle(
                                      fontFamily: "noto",
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.7),
                                      fontWeight: FontWeight.w700)),
                                  Container(
                                    margin : const EdgeInsets.only(top : 10, left : 5),
                                    width: 10,
                                    height : 1.5,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFD0D405),
                                      borderRadius:
                                      BorderRadius.circular(8),),
                                  ),
                                  const SizedBox(width : 5),
                                  Text("Off", style: TextStyle(
                                      fontFamily: "noto",
                                      fontSize: 10,
                                      color: Colors.white.withOpacity(0.7),
                                      fontWeight: FontWeight.w700)),
                                  Container(
                                    margin : const EdgeInsets.only(top : 10, left : 5),
                                    width: 10,
                                    height : 1.5,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF2E56BE).withOpacity(0.84),
                                      borderRadius:
                                      BorderRadius.circular(8),),

                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            color: Colors.transparent,
                            height: 40,
                            width: 50,
                            child: Text(
                              "${init.month}월",
                              style: TextStyle(
                                  fontFamily: "noto",
                                  fontSize: 20,
                                  color: Colors.white.withOpacity(0.7),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(width : 100),
                        ],
                      ),
                      const SizedBox(height : 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (var i = 0; i < init.week.length; i++)
                            Expanded(
                              child: Container(
                                  color: Colors.transparent,
                                  margin: const EdgeInsets.only(left: 10, right: 10),
                                  child: Center(
                                    child: Text(
                                      init.week[i],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          fontFamily: "noto",
                                          color: Colors.white.withOpacity(0.7)),
                                    ),
                                  )),
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 0.5,
                        margin: const EdgeInsets.only(top: 5),
                        width: Get.width,
                        color: const Color(0xFF5A537D),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 0.5, right: 0.5),
                        child: Listener(
                          onPointerDown: calender.detectTapedItem,
                          onPointerMove: calender.detectTapedItem,
                          onPointerUp: calender.clearSelection,
                          child: GridView.builder(
                              padding: const EdgeInsets.only(top: 0, bottom: 0),
                              key: calender.key,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: init.days.length, //item 개수
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 7, //1 개의 행에 보여줄 item 개수
                                mainAxisSpacing: 5, //수평 Padding
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return Obx(() => Foo(
                                    index: index,
                                    child: Stack(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(bottom: 30),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  left: !calender.temporArr
                                                      .contains(-1) &&
                                                      calender.selectedIdx
                                                          .contains(index) &&
                                                      calender.selectedIdx
                                                          .indexOf(index) ==
                                                          0
                                                      ? const BorderSide(
                                                    // POINT
                                                    color: Palette.whitePurple,
                                                    width: 1.3,
                                                  )
                                                      : const BorderSide(
                                                    // POINT
                                                    color: Colors.transparent,
                                                    width: 0.0,
                                                  ),
                                                  right: calender.selectedIdx
                                                      .contains(index) &&
                                                      index ==
                                                          calender.selectedIdx[
                                                          calender.selectedIdx
                                                              .length -
                                                              1]
                                                      ? const BorderSide(
                                                    // POINT
                                                    color: Palette.whitePurple,
                                                    width: 1.3,
                                                  )
                                                      : const BorderSide(
                                                    // POINT
                                                    color: Colors.transparent,
                                                    width: 0.0,
                                                  ),
                                                  bottom: calender.selectedIdx
                                                      .contains(index)
                                                      ? const BorderSide(
                                                    // POINT
                                                      color: Palette.whitePurple,
                                                      width: 1.3,
                                                      style: BorderStyle.solid)
                                                      : const BorderSide(
                                                    // POINT
                                                    color: Colors.transparent,
                                                    width: 0.0,
                                                  ),
                                                  top: calender.selectedIdx
                                                      .contains(index)
                                                      ? const BorderSide(
                                                    // POINT
                                                    color: Palette.whitePurple,
                                                    width: 1.3,
                                                  )
                                                      : const BorderSide(
                                                    // POINT
                                                    color: Colors.transparent,
                                                    width: 0.0,
                                                  ))),
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.only(
                                                      right: 6, left: 6, bottom: 2),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(8),
                                                    color: init.days[index]["isToday"]
                                                        ? Colors.black
                                                        : Colors.transparent,
                                                  ),
                                                  child: Text(
                                                    init.days[index]["day"].toString(),
                                                    style: TextStyle(
                                                      fontSize: 11.5,
                                                      fontFamily: "noto",
                                                      fontWeight: FontWeight.w500,
                                                      color: init.days[index]
                                                      ["inMonth"] &&
                                                          init.days[index]
                                                          ["isToday"]
                                                          ? Colors.white
                                                          .withOpacity(0.7)
                                                          : init.days[index]["inMonth"]
                                                          ? Colors.white
                                                          .withOpacity(0.7)
                                                          : const Color(0xFF5A537D),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        init.days[index]["inMonth"] &&
                                            init.days[index]['Day'].value == true
                                            ? Center(
                                          child: Container(
                                            margin:
                                            const EdgeInsets.only(top: 15),
                                            width: Get.width / 7.8,
                                            height: 4,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(4),
                                                color: init.days[index]["inMonth"]
                                                    ? Palette.mainColor
                                                    : Colors.blue),
                                          ),
                                        )
                                            : init.days[index]["inMonth"] &&
                                            init.days[index]['Evening'].value ==
                                                true
                                            ? Center(
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 15),
                                            width: Get.width / 7.8,
                                            height: 4,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(4),
                                                color: init.days[index]
                                                ["inMonth"]
                                                    ? Palette.eveningColor
                                                    : Colors.blue),
                                          ),
                                        )
                                            : init.days[index]["inMonth"] &&
                                            init.days[index]['Night']
                                                .value ==
                                                true
                                            ? Center(
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 15),
                                            width: Get.width / 7.8,
                                            height: 4,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    4),
                                                color: init.days[index]
                                                ["inMonth"]
                                                    ? Palette.nightColor
                                                    : Colors.blue),
                                          ),
                                        )
                                            : init.days[index]["inMonth"] &&
                                            init.days[index]['Off']
                                                .value ==
                                                true
                                            ? Center(
                                          child: Container(
                                            margin:
                                            const EdgeInsets.only(
                                                top: 15),
                                            width: Get.width / 7.8,
                                            height: 4,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius
                                                    .circular(4),
                                                color: init.days[
                                                index]
                                                ["inMonth"]
                                                    ? Palette.offColor
                                                    : Colors.blue),
                                          ),
                                        )
                                            : Container(
                                          width: 0,
                                        )
                                      ],
                                    )));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),

                Obx(() => SingleChildScrollView(
                  child: Column(
                    children: [
                      (calender.selectedIdx.length == 1 || calender.temporArr.length == 1) &&
                          !(init.days[init.dayIdx.value]['Day'].value ||
                              init.days[init.dayIdx.value]['Evening']
                                  .value ||
                              init.days[init.dayIdx.value]['Night'].value ||
                              init.days[init.dayIdx.value]['Off'].value)
                          ? Container(
                          color: const Color(0xFF38324F),
                          margin: const EdgeInsets.only(
                              top: 5, left: 10, right: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                              "${init.month}월"
                                  "${init.days[init.dayIdx.value]['day']}일은 아직 아무 일정도 정하지 않으셨네요.\n아래 버튼을 눌러 일정을 추가해보세요!",
                              style: TextStyle(
                                fontFamily: "noto",
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                              )))
                          : calender.selectedIdx.length == 1 &&
                          (init.days[init.dayIdx.value]['Day'].value ||
                              init.days[init.dayIdx.value]['Evening']
                                  .value ||
                              init.days[init.dayIdx.value]['Night']
                                  .value ||
                              init.days[init.dayIdx.value]['Off'].value)
                          ? Container(
                          margin: const EdgeInsets.only(
                              top: 5, left: 10, right: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                              "안녕하세요! ${init.days[init.dayIdx.value]['month']}월"
                                  "${init.days[init.dayIdx.value]['day']}일 일정을 말씀드릴게요.\n${init.getSchedule(init.dayIdx.value)}",
                              style: TextStyle(
                                fontFamily: "noto",
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                              )))
                          : init.days[init.dayIdx.value]['inMonth'] &&
                          calender.selectedIdx.isNotEmpty &&
                          calender.selectedIdx.length != 1 &&
                          !(init.days[init.dayIdx.value]['Day']
                              .value ||
                              init
                                  .days[init.dayIdx.value]
                              ['Evening']
                                  .value ||
                              init.days[init.dayIdx.value]['Night']
                                  .value ||
                              init.days[init.dayIdx.value]['Off']
                                  .value)
                          ? Container(
                          margin: const EdgeInsets.only(
                              top: 5, left: 10, right: 10),
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Wrap(
                                  children: [
                                    for (var i
                                    in calender.temporArr)
                                      Text("",
                                          style: TextStyle(
                                            fontSize: 0.1,
                                            color: Colors.white
                                                .withOpacity(0.7),
                                            fontWeight:
                                            FontWeight.w500,
                                            fontFamily: "noto",
                                          )),
                                    for (var i
                                    in calender.selectedIdx)
                                      Text(
                                          "${init.days[i]["day"]}일 ",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.white
                                                .withOpacity(0.7),
                                            fontWeight:
                                            FontWeight.w500,
                                            fontFamily: "noto",
                                          )),
                                    Text("은 아무 일정이 없네요. ",
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white
                                              .withOpacity(0.7),
                                          fontWeight:
                                          FontWeight.w500,
                                          fontFamily: "noto",
                                        )),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                    "아래 버튼을 눌러 일정을 추가해보세요! ",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.white
                                          .withOpacity(0.7),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "noto",
                                    )),
                              ),
                            ],
                          ))
                          : init.days[init.dayIdx.value]['inMonth'] &&
                          calender.selectedIdx.length != 1 &&
                          (init.days[init.dayIdx.value]['Day']
                              .value ||
                              init
                                  .days[init.dayIdx.value]
                              ['Evening']
                                  .value ||
                              init
                                  .days[init.dayIdx.value]
                              ['Night']
                                  .value ||
                              init
                                  .days[init.dayIdx.value]
                              ['Off']
                                  .value)
                          ? Container(
                          margin: const EdgeInsets.only(top: 5, left: 10, right: 10),
                          alignment: Alignment.topLeft,
                          child: Text("안녕하세요! 해당 날짜들의 일정 및 알람 관리를 하고 싶으시면\n알람 버튼을 눌러주세요. 잘 정리해 드릴게요!",
                              style: TextStyle(
                                color: Colors.white
                                    .withOpacity(0.7),
                                fontFamily: "noto",
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                              )))
                          : Container(),
                    ],
                  ),
                )),
              ]),
            ),
          ),
          Obx(() =>
          !(init.dayIdx.value > init.maxIdx ||
              init.dayIdx.value < init.minIdx)
              ? SizedBox(
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Material(
                    elevation: 20,
                    child: Container(
                      width: Get.width,
                      height: 80,
                      color: const Color(0xFFE7E7E7),
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 80,
                                height: 60,
                                child: GestureDetector(
                                    onTap: () => {
                                      if (init.dayIdx.value >
                                          init.maxIdx ||
                                          init.dayIdx.value <
                                              init.minIdx)
                                        {}
                                      else
                                        {
                                          if (init
                                              .days[init
                                              .dayIdx
                                              .value]
                                          ['Day']
                                              .value)
                                            {
                                              for (var i = 0;
                                              i <
                                                  calender
                                                      .selectedIdx
                                                      .length;
                                              i++)
                                                {
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Day']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Evening']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Night']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Off']
                                                      .value = false,
                                                }
                                            }
                                          else
                                            {
                                              for (var i = 0;
                                              i <
                                                  calender
                                                      .selectedIdx
                                                      .length;
                                              i++)
                                                {
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Day']
                                                      .value = true,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Evening']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Night']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Off']
                                                      .value = false,
                                                }
                                            }
                                        },
                                      init.setCount()
                                    },
                                    child: !(init.dayIdx.value >
                                        init.maxIdx ||
                                        init.dayIdx.value <
                                            init.minIdx)
                                        ? Column(
                                      children: [
                                        init
                                            .days[init
                                            .dayIdx
                                            .value]
                                        ['Day']
                                            .value
                                            ? SvgPicture.asset(
                                            'assets/image/dayclick.svg')
                                            : SvgPicture.asset(
                                            'assets/image/day.svg'),
                                        Container(
                                          alignment:
                                          Alignment
                                              .center,
                                          child: Text(
                                            "Day",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight
                                                    .w500,
                                                fontFamily:
                                                "noto",
                                                fontSize:
                                                12,
                                                color: init
                                                    .days[init.dayIdx.value][
                                                'Day']
                                                    .value
                                                    ? Palette
                                                    .mainColor
                                                    : Palette
                                                    .greyColor1),
                                          ),
                                        ),
                                      ],
                                    )
                                        : Container(
                                      width: 0,
                                    ))),
                            Container(
                                width: 80,
                                height: 60,
                                decoration: const BoxDecoration(),
                                child: GestureDetector(
                                    onTap: () => {
                                      if (init.dayIdx.value >
                                          init.maxIdx ||
                                          init.dayIdx.value <
                                              init.minIdx)
                                        {}
                                      else
                                        {
                                          if (init
                                              .days[init
                                              .dayIdx
                                              .value]
                                          ['Evening']
                                              .value)
                                            {
                                              for (var i = 0;
                                              i <
                                                  calender
                                                      .selectedIdx
                                                      .length;
                                              i++)
                                                {
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Day']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Evening']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Night']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Off']
                                                      .value = false,
                                                }
                                            }
                                          else
                                            {
                                              for (var i = 0;
                                              i <
                                                  calender
                                                      .selectedIdx
                                                      .length;
                                              i++)
                                                {
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Day']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Evening']
                                                      .value = true,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Night']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Off']
                                                      .value = false,
                                                }
                                            }
                                        },
                                      init.setCount()
                                    },
                                    child:
                                    !(init.dayIdx.value >
                                        init.maxIdx ||
                                        init.dayIdx
                                            .value <
                                            init.minIdx)
                                        ? Column(
                                      children: [
                                        init
                                            .days[
                                        init.dayIdx.value]
                                        [
                                        'Evening']
                                            .value
                                            ? SvgPicture
                                            .asset(
                                          'assets/image/eveningclick.svg',
                                        )
                                            : SvgPicture
                                            .asset(
                                          'assets/image/evening.svg',
                                        ),
                                        Container(
                                          alignment:
                                          Alignment
                                              .center,
                                          child: Text(
                                            "Evening",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight
                                                    .w500,
                                                fontFamily:
                                                "noto",
                                                fontSize:
                                                12,
                                                color: init.days[init.dayIdx.value]['Evening'].value
                                                    ? Palette.eveningColor
                                                    : Palette.greyColor1),
                                          ),
                                        ),
                                      ],
                                    )
                                        : Container(
                                      width: 0,
                                    ))),
                            const SizedBox(width: 50, height: 50),
                            Container(
                                width: 80,
                                height: 60,
                                decoration: const BoxDecoration(),
                                child: GestureDetector(
                                    onTap: () => {
                                      if (init.dayIdx.value >
                                          init.maxIdx ||
                                          init.dayIdx.value <
                                              init.minIdx)
                                        {}
                                      else
                                        {
                                          if (init
                                              .days[init
                                              .dayIdx
                                              .value]
                                          ['Night']
                                              .value)
                                            {
                                              for (var i = 0;
                                              i <
                                                  calender
                                                      .selectedIdx
                                                      .length;
                                              i++)
                                                {
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Day']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Evening']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Night']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Off']
                                                      .value = false,
                                                }
                                            }
                                          else
                                            {
                                              for (var i = 0;
                                              i <
                                                  calender
                                                      .selectedIdx
                                                      .length;
                                              i++)
                                                {
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Day']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Evening']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Night']
                                                      .value = true,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Off']
                                                      .value = false,
                                                }
                                            }
                                        },
                                      init.setCount()
                                    },
                                    child: !(init.dayIdx.value >
                                        init.maxIdx ||
                                        init.dayIdx.value <
                                            init.minIdx)
                                        ? Column(
                                      children: [
                                        init
                                            .days[init
                                            .dayIdx
                                            .value]
                                        [
                                        'Night']
                                            .value
                                            ? SvgPicture.asset(
                                            'assets/image/nightclick.svg')
                                            : SvgPicture.asset(
                                            'assets/image/night.svg'),
                                        Container(
                                          alignment:
                                          Alignment
                                              .center,
                                          child: Text(
                                            "Night",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight
                                                    .w500,
                                                fontFamily:
                                                "noto",
                                                fontSize:
                                                12,
                                                color: init
                                                    .days[init.dayIdx.value][
                                                'Night']
                                                    .value
                                                    ? Palette
                                                    .nightColor
                                                    : Palette
                                                    .greyColor1),
                                          ),
                                        ),
                                      ],
                                    )
                                        : Container(
                                      width: 0,
                                    ))),
                            Container(
                                width: 80,
                                height: 60,
                                decoration: const BoxDecoration(),
                                child: GestureDetector(
                                    onTap: () => {
                                      if (init.dayIdx.value >
                                          init.maxIdx ||
                                          init.dayIdx.value <
                                              init.minIdx)
                                        {}
                                      else
                                        {
                                          if (init
                                              .days[init
                                              .dayIdx
                                              .value]
                                          ['Off']
                                              .value)
                                            {
                                              for (var i = 0;
                                              i <
                                                  calender
                                                      .selectedIdx
                                                      .length;
                                              i++)
                                                {
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Day']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Evening']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Night']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Off']
                                                      .value = false,
                                                }
                                            }
                                          else
                                            {
                                              for (var i = 0;
                                              i <
                                                  calender
                                                      .selectedIdx
                                                      .length;
                                              i++)
                                                {
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Day']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Evening']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Night']
                                                      .value = false,
                                                  init
                                                      .days[
                                                  calender.selectedIdx[i]]
                                                  [
                                                  'Off']
                                                      .value = true,
                                                }
                                            }
                                        },
                                      init.setCount()
                                    },
                                    child: !(init.dayIdx.value >
                                        init.maxIdx ||
                                        init.dayIdx.value <
                                            init.minIdx)
                                        ? Column(
                                      children: [
                                        init
                                            .days[init
                                            .dayIdx
                                            .value]
                                        ['Off']
                                            .value
                                            ? SvgPicture.asset(
                                            'assets/image/offclick.svg')
                                            : SvgPicture.asset(
                                            'assets/image/off.svg'),
                                        Container(
                                          alignment:
                                          Alignment
                                              .center,
                                          child: Text(
                                            "Off",
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight
                                                    .w500,
                                                fontFamily:
                                                "noto",
                                                fontSize:
                                                12,
                                                color: init
                                                    .days[init.dayIdx.value][
                                                'Off']
                                                    .value
                                                    ? Palette
                                                    .offColor
                                                    : Palette
                                                    .greyColor1),
                                          ),
                                        ),
                                      ],
                                    )
                                        : Container(
                                      width: 0,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  child: Container(
                      margin: EdgeInsets.only(
                        left: Get.width / 2 - 30,
                      ),
                      padding: const EdgeInsets.all(10),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0.5, 0.5),
                            ),
                          ],
                          color: Colors.blue,
                          border: Border.all(color: Colors.blue),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(30))),
                      child: GestureDetector(
                          onTap: () {
                            print("ㅋㅋㅋㅋㅋㅋ");
                          },
                          child: SvgPicture.asset(
                              'assets/image/alarm.svg',
                              width: 10,
                              height: 10))),
                ),
              ],
            ),
          )
              : Container())
        ],
      ),
    );
  }
}
