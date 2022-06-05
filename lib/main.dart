import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/settings_ui_screen/settings_ui_android.dart';
import 'screens/settings_ui_screen/settings_ui_ios.dart';
import 'utils/vars.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return (isIOS) ? ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => const CupertinoApp(
        theme : CupertinoThemeData(
          brightness: Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
        home: SettingsUIiOSPage(),
      ),
    ) : ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SettingsUIAndroidPage(),
      ),
    );
  }
}
