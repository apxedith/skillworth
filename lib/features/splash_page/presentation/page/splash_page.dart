import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/features/get_started_page/presentation/page/get_started_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const GetStartedPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Center(
          child: Text(
            appName,
            style: TextStyle(
              letterSpacing: 4.sp,
              fontSize: 33.sp,
              color: Theme.of(context).colorScheme.secondary,
              fontFamily: font1,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
