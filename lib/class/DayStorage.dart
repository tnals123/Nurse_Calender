import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:json_annotation/json_annotation.dart';

class User {
  final int year;
  final int? month;
  final int? day;
  final bool? inMonth;
  final bool? isToday;
  final bool? Day;
  final bool? Evening;
  final bool? Night;
  final bool? Off;

  User(
      this.year,
      this.month,
      this.day,
      this.inMonth,
      this.isToday,
      this.Day,
      this.Evening,
      this.Night,
      this.Off,
      );

  User.fromJson(Map<String, dynamic> json) :
              year = json['year'],
              month = json['month'],
              day = json['day'],
              inMonth = json['inMonth'],
              isToday = json['isToday'],
              Day = json['Day'],
              Evening = json['Evening'],
              Night = json['Night'],
              Off = json['Off'];

  Map<String, dynamic> toJson() =>
      {
        'year': year,
        'month': month,
        'day': day,
        'inMonth': inMonth,
        'isToday': isToday,
        'Day': Day,
        'Evening': Evening,
        'Night': Night,
        'Off': Off,
      };
}