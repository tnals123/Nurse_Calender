import 'dart:async' show Future;
import 'dart:convert';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  static late final SharedPreferences _prefsInstance;

  static Future<SharedPreferences> init() async =>
      _prefsInstance = await SharedPreferences.getInstance();

  static const scheduleToken = "token";
  static const isPreference = "false";

  static Future<void> setSchedule(List scheduleList) async {
    // _prefsInstance.setString(scheduleToken, scheduleList.toString()); 이렇게 썼었음
    _prefsInstance.setString(scheduleToken, jsonEncode(scheduleList));
  }
  static String? getSchedule() => _prefsInstance.getString(scheduleToken);

  static Future<bool> setPreference() {
    return _prefsInstance.setString(isPreference, "true");
  }
  static String? getPreference() {
    return _prefsInstance.getString(isPreference);
  }
}