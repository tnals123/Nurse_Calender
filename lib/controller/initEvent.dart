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
  RxList selectedIdx = [].obs;
  RxInt dayCount = 0.obs;
  RxInt eveningCount = 0.obs;
  RxInt nightCount = 0.obs;
  RxInt offCount = 0.obs;

  @override
  void onInit() {
    setFirst(2023, 2);
  }

  getSchedule(int dayIdx) {
      String schedule = '';
        if (days[dayIdx]['Day'].value){
          schedule =  '오전 근무시네요. 출근 시간은 Preference 이네요. \n알람은 맞추셨죠? '
              '알람 버튼을 누르시면 출근 시간 1시간 전에 알람을 자동으로 맞춰 드릴게요!';
        }
        else if (days[dayIdx]['Evening'].value){
          schedule = '오후 근무시네요. 출근 시간은 Preference 이네요. \n알람은 맞추셨죠? '
              '알람 버튼을 누르시면 출근 시간 1시간 전에 알람을 자동으로 맞춰 드릴게요!';
        }
        else if (days[dayIdx]['Night'].value){
          schedule = '밤 근무시네요. 출근 시간은 Preference 이네요. \n알람은 맞추셨죠? '
              '알람 버튼을 누르시면 출근 시간 1시간 전에 알람을 자동으로 맞춰 드릴게요!';
        }
        else if (days[dayIdx]['Off'].value){
          schedule = '오프시네요! 오늘은 편히 쉬세요.';
      }return schedule;
  }

  setCount() {
    dayCount.value = 0;
    eveningCount.value = 0;
    nightCount.value = 0;
    offCount.value = 0;

    for (var i = 0 ; i<days.length; i++){
      if (days[i]['inMonth']){
        if (days[i]['Day'].value){
          dayCount.value += 1;
        }
        else if (days[i]['Evening'].value){
          eveningCount.value += 1;
        }
        else if (days[i]['Night'].value){
          nightCount.value += 1;
        }
        else if (days[i]['Off'].value){
          offCount.value += 1;
        }
      }
    }
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

