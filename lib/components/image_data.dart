import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageData extends StatelessWidget {
  String icon;
  final double width; // width 값을 받을 때
  ImageData(
      this.icon, {
        Key? key,
        this.width=55,
      }) : super(key: key); // width 값을 받지 않을 때 기본값 55

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        icon,
        width: width/ Get.mediaQuery.devicePixelRatio
    );
  }
}

class IconPath {
  static String get day => 'assets/image/day.png';
  static String get dayClick => 'assets/image/dayclick.png';
  static String get evening => 'assets/image/ev.png';
  static String get eveningClick => 'assets/image/evclick.png';
  static String get night => 'assets/image/night.png';
  static String get nightClick => 'assets/image/nightclick.png';
  static String get off => 'assets/image/off.png';
  static String get offClick => 'assets/image/offclick.png';


}