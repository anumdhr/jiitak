import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jiitak_ui_assignment/modules/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        ScreenUtil.init(
          context,
          designSize: const Size(1024, 768),
          splitScreenMode: true,
          minTextAdapt: true,
        );
        return Theme(
          data: ThemeData(
            primaryColor: const Color(0xffF3F3F3),
            scaffoldBackgroundColor: const Color(0xffF3F3F3),
            useMaterial3: true,
            fontFamily: "NotoSansJP-Medium",
          ),
          child: child ?? const MainScreen(), // Ensure child is not null
        );
      },
      home: const MainScreen(), // Provide a home property
    );
  }
}
