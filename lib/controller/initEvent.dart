import 'dart:convert';
import 'dart:ffi';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lol_blackbox/Utils/preference_util.dart';
import 'package:lol_blackbox/class/DayStorage.dart';

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
  Future<void> onInit() async {
    if (PreferenceUtils.getPreference() == "true"){
      print("프리퍼런스 사용");
      var temporList = [];
      var date = DateFormat('yyyy-MM-dd').format(now);
      setFirstWithPre(int.parse(date.split("-")[0]), int.parse(date.split("-")[1]));
      print("asdasd");
      print(jsonDecode(PreferenceUtils.getSchedule()!));
      List<dynamic> preFerenceArray = jsonDecode(PreferenceUtils.getSchedule()!);
      for(var i = 0 ; i<preFerenceArray.length; i++){
        print(preFerenceArray[i]["Day"]);
        preFerenceArray[i]["Day"] = RxBool(preFerenceArray[i]["Day"]);
        preFerenceArray[i]["Evening"] = RxBool(preFerenceArray[i]["Evening"]);
        preFerenceArray[i]["Night"] = RxBool(preFerenceArray[i]["Night"]);
        preFerenceArray[i]["Off"] = RxBool(preFerenceArray[i]["Off"]);
      }

      days = preFerenceArray.obs;


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
    else{
      print("앙ㅁ닐ㄴㄹ");
      DateTime now = DateTime.now();
      var date = DateFormat('yyyy-MM-dd').format(now);
      print("zxczcxxzcv");
      setFirst(int.parse(date.split("-")[0]), int.parse(date.split("-")[1]));
      setPreference();
    }
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

  setPreference(){
    List tem = [...days];
    List preferenceArray = [];
    for (var i = 0 ; i<tem.length; i++){
      var temporJson = {
        "year": tem[i]["year"],
        "month": tem[i]["month"],
        "day": tem[i]["day"],
        "inMonth": tem[i]["inMonth"],
        "isToday" : tem[i]["isToday"],
        "Day" : tem[i]["Day"].value,
        "Evening" : tem[i]["Evening"].value,
        "Night" : tem[i]["Night"].value,
        "Off" : tem[i]["Off"].value
      };
      preferenceArray.add(temporJson);
    }
    try{
      PreferenceUtils.setSchedule(preferenceArray);
      print("넣기 성공");
      PreferenceUtils.setPreference();
    }
    catch(e){
      print("실패~");
      print(e);
    }

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

  setFirstWithPre(int setYear, int setMonth) {
    year.value = setYear;
    month.value = setMonth;
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
          "isToday" : false,
          "Day" : false.obs,
          "Evening" : false.obs,
          "Night" : false.obs,
          "Off" : false.obs

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
        "isToday" : false,
        "Day" : false.obs,
        "Evening" : false.obs,
        "Night" : false.obs,
        "Off" : false.obs
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

