import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lol_blackbox/controller/initEvent.dart';

import '../components/palette.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initEventController init = Get.put(initEventController());
    print(init.days);
    var level = 1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
        height: 15,
          ),
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 21, top: 35),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.1, color: Colors.black),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, top: 50),
                child: Text(
                  "Lv.${level}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontFamily: "paybooc",
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, right: 21),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.1,
                color: Colors.black,
              ),
              color: Colors.white,
            ),
          )
        ],
          ),
          const SizedBox(
        height: 20,
          ),
          Container(
        margin: const EdgeInsets.only(left: 21),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 3, right: 5),
              child: const Text(
                "D",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "paybooc",
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 20,
              padding: const EdgeInsets.only(
                top: 10,
                // Space between underline and text
              ),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.amber,
                width: 2.0, // Underline thickness
              ))),
              child: const Center(
                child: Text(
                  "4",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "paybooc",
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, bottom: 1, right: 5),
              child: const Text(
                "E",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "paybooc",
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 20,
              padding: const EdgeInsets.only(
                top: 10,
                // Space between underline and text
              ),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.amber,
                width: 2.0, // Underline thickness
              ))),
              child: const Center(
                child: Text(
                  "23",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "paybooc",
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, bottom: 1, right: 5),
              child: const Text(
                "N",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "paybooc",
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 20,
              padding: const EdgeInsets.only(
                top: 10,
                // Space between underline and text
              ),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.amber,
                width: 2.0, // Underline thickness
              ))),
              child: const Center(
                child: Text(
                  "10",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "paybooc",
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, bottom: 1, right: 5),
              child: const Text(
                "OFF",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "paybooc",
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: 20,
              padding: const EdgeInsets.only(
                top: 10,
                // Space between underline and text
              ),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.amber,
                width: 2.0, // Underline thickness
              ))),
              child: const Center(
                child: Text(
                  "8",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "paybooc",
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
          ),
          Container(
        height: 1,
        margin: const EdgeInsets.only(top: 10),
        width: Get.width,
        color: Colors.black,
          ),
          Container(
        height: 1,
        margin: const EdgeInsets.only(top: 5),
        width: Get.width,
        color: Colors.black,
          ),
          const SizedBox(
        height: 10,
          ),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            height: 40,
            width: 40,
            child: Text(
              "${init.month}월",
              style: const TextStyle(
                  fontFamily: "noto",
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
          ),
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var i = 0; i < init.week.length; i++)
            Expanded(
              child: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: i == 0
                      ? Center(
                          child: Text(
                            init.week[i],
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                fontFamily: "noto",
                                color: Colors.red),
                          ),
                        )
                      : Center(
                          child: Text(
                            init.week[i],
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                fontFamily: "noto",
                                color: Colors.black),
                          ),
                        )),
            ),
        ],
          ),
          const SizedBox(
        height: 3,
          ),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: init.days.length, //item 개수
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7, //1 개의 행에 보여줄 item 개수
              mainAxisSpacing: 10, //수평 Padding
            ),
            itemBuilder: (BuildContext context, int index) {
              return Obx(() =>  GestureDetector(
                onTap: () => {
                  for (var i = 0 ; i<init.days.length; i++){
                    init.days[i]['picked'].value = false
                  },
                  init.days[index]['picked'].value = true,
                  init.dayIdx.value = index
                },
                onHorizontalDragStart: (detail){
                  print("드래그1 ${index}");
                  print("드래그1 ${detail}");
                },
                onHorizontalDragEnd: (detail){
                  print("드래그2 ${index}");
                  print("드래그2 ${detail}");
                },
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          bottom: 30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.1,
                          color: init.days[index]["inMonth"] &&
                              init.days[index]["picked"].value
                              ? Colors.grey
                              : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  right: 6, left: 6, bottom: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: init.days[index]["isToday"]
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Text(
                                init.days[index]["day"].toString(),
                                style: TextStyle(
                                  color: init.days[index]["inMonth"] &&
                                      init.days[index]["isToday"]
                                      ? Colors.white
                                      : init.days[index]["inMonth"]
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    init.days[index]["inMonth"] && init.days[index]['Day'].value == true ?
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      width: Get.width / 7,
                      height: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: init.days[index]["inMonth"] ? Colors.blue : Colors.blue
                      ),
                    ) : init.days[index]["inMonth"] && init.days[index]['Evening'].value == true ?
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      width: Get.width / 7,
                      height: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: init.days[index]["inMonth"] ? Palette.mainColor : Colors.blue
                      ),
                    ) : init.days[index]["inMonth"] && init.days[index]['Night'].value == true ?
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      width: Get.width / 7,
                      height: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: init.days[index]["inMonth"] ? Palette.greyColor4 : Colors.blue
                      ),
                    ) : init.days[index]["inMonth"] && init.days[index]['Off'].value == true ?
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      width: Get.width / 7,
                      height: 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: init.days[index]["inMonth"] ? Palette.greyColor2 : Colors.blue
                      ),
                    ) : Container(width: 0,)
                  ],
                ),
              ));
            }
          ),
          Container(
        height: 1,
        margin: const EdgeInsets.only(top: 10),
        width: Get.width,
        color: Colors.black,
          ),
          Obx(() => Column(
            children: [
              // init.days[init.dayIdx.value]['inMonth'] && init.days[init.dayIdx.value]['Day'].value ?
              Column(
                children: [
                  Container(
                      width: Get.width,
                      height: 40,
                      margin: const EdgeInsets.only(top: 20, left: 21, right: 21),
                      decoration: BoxDecoration(border:
                      Border.all(color: Colors.black)),
                      child:GestureDetector(
                        onTap: () => {
                          if (init.days[init.dayIdx.value]['Day'].value){
                            init.days[init.dayIdx.value]['Day'].value = false,
                            init.days[init.dayIdx.value]['Evening'].value = false,
                            init.days[init.dayIdx.value]['Night'].value = false,
                            init.days[init.dayIdx.value]['Off'].value = false,
                          }
                          else{
                            init.days[init.dayIdx.value]['Evening'].value = false,
                            init.days[init.dayIdx.value]['Night'].value = false,
                            init.days[init.dayIdx.value]['Off'].value = false,
                            init.days[init.dayIdx.value]['Day'].value = true,
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            color: init.days[init.dayIdx.value]['Day'].value ?  Colors.blue : Palette.greyColor4
                          ),
                          alignment: Alignment.center,
                          child: const Text("Day"),
                        ),
                      )),
                  Container(
                      width: Get.width,
                      height: 40,
                      margin: const EdgeInsets.only(top: 20, left: 21, right: 21),
                      decoration: BoxDecoration(border:
                      Border.all(color: Colors.black)),
                      child:GestureDetector(
                        onTap: () => {
                          if (init.days[init.dayIdx.value]['Evening'].value){
                            init.days[init.dayIdx.value]['Day'].value = false,
                            init.days[init.dayIdx.value]['Evening'].value = false,
                            init.days[init.dayIdx.value]['Night'].value = false,
                            init.days[init.dayIdx.value]['Off'].value = false,
                          }
                          else{
                            init.days[init.dayIdx.value]['Day'].value = false,
                            init.days[init.dayIdx.value]['Night'].value = false,
                            init.days[init.dayIdx.value]['Off'].value = false,
                            init.days[init.dayIdx.value]['Evening'].value = true,
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: init.days[init.dayIdx.value]['Evening'].value ? Palette.subColor1 : Palette.greyColor4
                          ),
                          alignment: Alignment.center,
                          child: const Text("Evening"),
                        ),
                      )),
                  Container(
                      width: Get.width,
                      height: 40,
                      margin: const EdgeInsets.only(top: 20, left: 21, right: 21),
                      decoration: BoxDecoration(border:
                      Border.all(color: Colors.black)),
                      child:GestureDetector(
                        onTap: () => {
                          if (init.days[init.dayIdx.value]['Night'].value){
                            init.days[init.dayIdx.value]['Day'].value = false,
                            init.days[init.dayIdx.value]['Evening'].value = false,
                            init.days[init.dayIdx.value]['Night'].value = false,
                            init.days[init.dayIdx.value]['Off'].value = false,
                          }
                          else{
                            init.days[init.dayIdx.value]['Day'].value = false,
                            init.days[init.dayIdx.value]['Evening'].value = false,
                            init.days[init.dayIdx.value]['Off'].value = false,
                            init.days[init.dayIdx.value]['Night'].value = true,
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: init.days[init.dayIdx.value]['Night'].value ?  Palette.greyColor3 : Palette.greyColor4
                          ),
                          alignment: Alignment.center,
                          child: const Text("Night"),
                        ),
                      )),
                  Container(
                      width: Get.width,
                      height: 40,
                      margin: const EdgeInsets.only(top: 20, left: 21, right: 21),
                      decoration: BoxDecoration(border:
                      Border.all(color: Colors.black)),
                      child:GestureDetector(
                        onTap: () => {
                          if (init.days[init.dayIdx.value]['Off'].value){
                            init.days[init.dayIdx.value]['Day'].value = false,
                            init.days[init.dayIdx.value]['Evening'].value = false,
                            init.days[init.dayIdx.value]['Night'].value = false,
                            init.days[init.dayIdx.value]['Off'].value = false,
                          }
                          else{
                            init.days[init.dayIdx.value]['Evening'].value = false,
                            init.days[init.dayIdx.value]['Night'].value = false,
                            init.days[init.dayIdx.value]['Day'].value = false,
                            init.days[init.dayIdx.value]['Off'].value = true,
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: init.days[init.dayIdx.value]['Off'].value ?  Colors.blue : Palette.greyColor4
                          ),
                          alignment: Alignment.center,
                          child: const Text("Off"),
                        ),
                      )),
                ],
              )
            ],
          ) ),

        ]),
      ),
    );
  }
}
