import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth_mobile/config/theme/dark_theme.dart';
import 'package:skillworth_mobile/config/theme/light_theme.dart';
import 'package:skillworth_mobile/features/register_page/presentation/page/add_skills_page.dart';
import 'package:skillworth_mobile/features/screen_layout/presentation/page/screen_layout.dart';

import 'features/splash_page/presentation/page/splash_page.dart';

void main() {
  (Platform.isAndroid)
      ? SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
        ))
      : null;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const SplashPage(),
      );
    });
  }
}
