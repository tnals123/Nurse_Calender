import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lol_blackbox/Utils/preference_util.dart';
import 'package:lol_blackbox/pages/asdf.dart';
import 'package:lol_blackbox/pages/calendarPage.dart';

import 'Utils/AppLifeCycle.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceUtils.init();
  runApp(const MyApp());
  WidgetsBinding.instance.addObserver(MyWidgetsBindingObserver());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KNOCK',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'noto',
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black),
          )),
      home: CalenderPage(),
      // initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => const MyApp(),
          // page: ()=> const App(),
        ),

      ],
    );
  }
}
