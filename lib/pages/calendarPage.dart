import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lol_blackbox/controller/calenderController.dart';
import 'package:lol_blackbox/controller/initEvent.dart';

import '../components/image_data.dart';
import '../components/palette.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initEventController init = Get.put(initEventController());
    CalenderController calender = Get.put(CalenderController());
    var level = 1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          color: Palette.calenderColor,
          child: Column(
            children: [
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
            ],
          ),
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
      Container(
        padding: const EdgeInsets.only(left: 0.5,right: 0.5),
        child: Listener(
          onPointerDown: calender.detectTapedItem,
          onPointerMove: calender.detectTapedItem,
          onPointerUp: calender.clearSelection,
          child:GridView.builder(
              key: calender.key,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: init.days.length, //item 개수
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7, //1 개의 행에 보여줄 item 개수
                mainAxisSpacing: 5, //수평 Padding
              ),
              itemBuilder: (BuildContext context, int index) {
                return Obx(() => Foo(
                  index : index,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            bottom: 30),
                        decoration: BoxDecoration(
                            border : Border(
                                left: !calender.temporArr.contains(-1) && calender.selectedIdx.contains(index) && calender.selectedIdx.indexOf(index) == 0 ?
                                const BorderSide( // POINT
                                  color: Colors.grey,
                                  width: 1.3,
                                ) :
                                const BorderSide( // POINT
                                  color: Colors.white,
                                  width: 0.0,
                                ),
                                right: calender.selectedIdx.contains(index) && index == calender.selectedIdx[calender.selectedIdx.length-1] ?
                                const BorderSide( // POINT
                                  color: Colors.grey,
                                  width: 1.3,
                                ) :
                                const BorderSide( // POINT
                                  color: Colors.white,
                                  width: 0.0,
                                ),
                                bottom: calender.selectedIdx.contains(index) ?
                                const BorderSide( // POINT
                                  color: Colors.grey,
                                  width: 1.3,
                                  style: BorderStyle.solid
                                ) : const BorderSide( // POINT
                                  color: Colors.white,
                                  width: 0.0,
                                ),top: calender.selectedIdx.contains(index) ?
                            const BorderSide( // POINT
                              color: Colors.grey,
                              width: 1.3,
                            ) : const BorderSide( // POINT
                              color: Colors.white,
                              width: 0.0,
                            )

                            )
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
                        width: Get.width / 7.1,
                        height: 4,
                        decoration: BoxDecoration(
                            color: init.days[index]["inMonth"] ? Colors.blue : Colors.blue
                        ),
                      ) : init.days[index]["inMonth"] && init.days[index]['Evening'].value == true ?
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        width: Get.width / 7.1,
                        height: 4,
                        decoration: BoxDecoration(
                            color: init.days[index]["inMonth"] ? Palette.mainColor : Colors.blue
                        ),
                      ) : init.days[index]["inMonth"] && init.days[index]['Night'].value == true ?
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        width: Get.width / 7.1,
                        height: 4,
                        decoration: BoxDecoration(
                            color: init.days[index]["inMonth"] ? Palette.greyColor4 : Colors.blue
                        ),
                      ) : init.days[index]["inMonth"] && init.days[index]['Off'].value == true ?
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        width: Get.width / 7.1,
                        height: 4,
                        decoration: BoxDecoration(
                            color: init.days[index]["inMonth"] ? Palette.greyColor2 : Colors.blue
                        ),
                      ) : Container(width: 0,)
                    ],
                  )));
              }
            ),
        ),
      ),
        Container(
      height: 1,
      margin: const EdgeInsets.only(top: 10),
      width: Get.width,
      color: Colors.black,
        ),
        Obx(() => Expanded(
          child: Container(
            child: Column(
              children: [
                Expanded(child: Container()),
                !(init.dayIdx.value > init.maxIdx || init.dayIdx.value < init.minIdx) ?
                    Column(
                      children: [
                        Material(
                        elevation : 20,
                          child: Container(
                            height: 60,
                            color : Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(left:15),
                                    width: 50,
                                    height: 50,
                                    child:GestureDetector(
                                      onTap: () => {
                                        if (init.dayIdx.value >init.maxIdx || init.dayIdx.value <init.minIdx){

                                        }
                                        else{
                                          if (init.days[init.dayIdx.value]['Day'].value){
                                            for (var i = 0 ; i<calender.selectedIdx.length; i++){
                                              init.days[calender.selectedIdx[i]]['Day'].value = false,
                                              init.days[calender.selectedIdx[i]]['Evening'].value = false,
                                              init.days[calender.selectedIdx[i]]['Night'].value = false,
                                              init.days[calender.selectedIdx[i]]['Off'].value = false,
                                            }
                                          }
                                          else{
                                            for (var i = 0 ; i<calender.selectedIdx.length; i++){
                                              init.days[calender.selectedIdx[i]]['Day'].value = true,
                                              init.days[calender.selectedIdx[i]]['Evening'].value = false,
                                              init.days[calender.selectedIdx[i]]['Night'].value = false,
                                              init.days[calender.selectedIdx[i]]['Off'].value = false,
                                            }
                                          }
                                        }
                                      },
                                      child: !(init.dayIdx.value > init.maxIdx || init.dayIdx.value < init.minIdx) ?
                                      Column(
                                        children: [
                                          ImageData(
                                            IconPath.day,
                                            width: 50,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color:
                                                init.days[init.dayIdx.value]['Day'].value ?  Colors.blue : Colors.white
                                            ),
                                            alignment: Alignment.center,
                                            child: const Text("Day",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "noto",
                                              fontSize: 12
                                            ),),
                                          ),
                                        ],
                                      ) : Container(width: 0,)
                                    )),
                                Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    child:GestureDetector(
                                      onTap: () => {
                                        if (init.dayIdx.value >init.maxIdx || init.dayIdx.value <init.minIdx){

                                        }
                                        else{
                                          if (init.days[init.dayIdx.value]['Evening'].value){
                                            for (var i = 0 ; i<calender.selectedIdx.length; i++){
                                              init.days[calender.selectedIdx[i]]['Day'].value = false,
                                              init.days[calender.selectedIdx[i]]['Evening'].value = false,
                                              init.days[calender.selectedIdx[i]]['Night'].value = false,
                                              init.days[calender.selectedIdx[i]]['Off'].value = false,
                                            }
                                          }
                                          else{
                                            for (var i = 0 ; i<calender.selectedIdx.length; i++){
                                              init.days[calender.selectedIdx[i]]['Day'].value = false,
                                              init.days[calender.selectedIdx[i]]['Evening'].value = true,
                                              init.days[calender.selectedIdx[i]]['Night'].value = false,
                                              init.days[calender.selectedIdx[i]]['Off'].value = false,
                                            }
                                          }
                                        }

                                      },
                                      child: !(init.dayIdx.value > init.maxIdx || init.dayIdx.value < init.minIdx) ?
                                      Column(
                                        children: [
                                          ImageData(
                                            IconPath.evening,
                                            width: 50,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: init.days[init.dayIdx.value]['Evening'].value ? Palette.subColor1 : Colors.white
                                            ),
                                            alignment: Alignment.center,
                                            child: const Text("Evening",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "noto",
                                                  fontSize: 12
                                              ),),
                                          ),
                                        ],
                                      ) : Container(width: 0,)
                                    )),
                                Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    child:GestureDetector(
                                      onTap: () => {
                                        if (init.dayIdx.value >init.maxIdx || init.dayIdx.value <init.minIdx){

                                        }
                                        else{
                                          if (init.days[init.dayIdx.value]['Night'].value){
                                            for (var i = 0 ; i<calender.selectedIdx.length; i++){
                                              init.days[calender.selectedIdx[i]]['Day'].value = false,
                                              init.days[calender.selectedIdx[i]]['Evening'].value = false,
                                              init.days[calender.selectedIdx[i]]['Night'].value = false,
                                              init.days[calender.selectedIdx[i]]['Off'].value = false,
                                            }
                                          }
                                          else{
                                            for (var i = 0 ; i<calender.selectedIdx.length; i++){
                                              init.days[calender.selectedIdx[i]]['Day'].value = false,
                                              init.days[calender.selectedIdx[i]]['Evening'].value = false,
                                              init.days[calender.selectedIdx[i]]['Night'].value = true,
                                              init.days[calender.selectedIdx[i]]['Off'].value = false,
                                            }
                                          }
                                        }
                                      },
                                      child: !(init.dayIdx.value > init.maxIdx || init.dayIdx.value < init.minIdx) ?
                                      Column(
                                        children: [
                                          ImageData(
                                            IconPath.night,
                                            width: 50,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: init.days[init.dayIdx.value]['Night'].value ?  Palette.greyColor3 : Colors.white

                                            ),
                                            alignment: Alignment.center,
                                            child: const Text("Night",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "noto",
                                                  fontSize: 12
                                              ),),
                                          ),
                                        ],
                                      ) : Container(width: 0,)
                                    )),
                                Container(
                                    width: 50,
                                    height: 50,
                                    margin: const EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(),
                                    child:GestureDetector(
                                      onTap: () => {
                                        if (init.dayIdx.value >init.maxIdx || init.dayIdx.value <init.minIdx){
                                        }
                                        else{
                                          if (init.days[init.dayIdx.value]['Night'].value){
                                            for (var i = 0 ; i<calender.selectedIdx.length; i++){
                                              init.days[calender.selectedIdx[i]]['Day'].value = false,
                                              init.days[calender.selectedIdx[i]]['Evening'].value = false,
                                              init.days[calender.selectedIdx[i]]['Night'].value = false,
                                              init.days[calender.selectedIdx[i]]['Off'].value = false,
                                            }
                                          }
                                          else{
                                            for (var i = 0 ; i<calender.selectedIdx.length; i++){
                                              init.days[calender.selectedIdx[i]]['Day'].value = false,
                                              init.days[calender.selectedIdx[i]]['Evening'].value = false,
                                              init.days[calender.selectedIdx[i]]['Night'].value = false,
                                              init.days[calender.selectedIdx[i]]['Off'].value = true,
                                            }
                                          }
                                        }
                                      },
                                      child: !(init.dayIdx.value > init.maxIdx || init.dayIdx.value < init.minIdx) ?
                                      Column(
                                        children: [
                                          ImageData(
                                            IconPath.off,
                                            width: 50,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: init.days[init.dayIdx.value]['Off'].value ?  Colors.blue : Colors.white

                                            ),
                                            alignment: Alignment.center,
                                            child: const Text("Off",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "noto",
                                                  fontSize: 12
                                              ),),
                                          ),
                                        ],
                                      ) : Container(width: 0,)
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ) : Container()

              ],
            ),
          ),
        ) ),

      ]),
    );
  }
}
