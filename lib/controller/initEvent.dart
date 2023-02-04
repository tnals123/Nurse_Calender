import 'package:get/get.dart';

class initEventController extends GetxController {
  var week = ["일", "월", "화", "수", "목", "금", "토"];
  static DateTime now = DateTime.now();

  RxInt year = 0.obs;
  RxInt month = 0.obs;
  RxList days = [].obs;
  int minIdx = 0;
  int maxIdx = 0;
  RxInt dayIdx = 0.obs; // 클릭한 날짜 인덱스

  @override
  void onInit() {
    setFirst(2023, 2);
  }

  setFirst(int setYear, int setMonth) {
    year.value = setYear;
    month.value = setMonth;
    insertDays(year.value, month.value);
  }

  // 일자 계산
  insertDays(int year, int month) {
    var now = DateTime.now();
    int date = now.day;
    days.clear();

    int lastDay = DateTime(year, month + 1, 0).day;
    for (var i = 1; i <= lastDay; i++) {
      days.add({
        "year": year,
        "month": month,
        "day": i,
        "inMonth": true,
        "picked": false.obs,
        "isToday" : date == i ? true : false,
        "Day" : false.obs,
        "Evening" : false.obs,
        "Night" : false.obs,
        "Off" : false.obs
      });
    }

    if (DateTime(year, month, 1).weekday != 7) {
      var temp = [];
      int prevLastDay = DateTime(year, month, 0).day;
      for (var i = DateTime(year, month, 1).weekday - 1; i >= 0; i--) {
        temp.add({
          "year": year,
          "month": month - 1,
          "day": prevLastDay - i,
          "inMonth": false,
          "picked": false.obs,
          "isToday" : false
        });
      }
      days = [...temp, ...days].obs;
    }

    var temp = [];
    for (var i = 1; i <= 42 - days.length; i++) {
      temp.add({
        "year": year,
        "month": month + 1,
        "day": i,
        "inMonth": false,
        "picked": false.obs,
        "isToday" : false
      });
    }

    days = [...days, ...temp].obs;

    for (int i = 0 ; i<days.length; i++){
      if (days[i]["inMonth"] == true){
        minIdx = i;
        break;
      }
    }
    dayIdx.value = minIdx;

    for (int i = 0 ; i<days.length; i++){
      if (i>=15 && days[i]["inMonth"] == false && days[i-1]["inMonth"] == true){
        maxIdx = i-1;
        break;
      }
    }
  }
}

