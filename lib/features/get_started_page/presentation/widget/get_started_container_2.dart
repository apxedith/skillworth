import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class GetStartedContainer2 extends StatelessWidget {
  const GetStartedContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 67.h,
          width: 100.w,
          color: Colors.transparent,
          padding: EdgeInsets.all(2.h),
          child: Column(
            children: [
              Container(
                height: 45.h,
                width: 100.w,
                color: Colors.transparent,
              ),
              Divider(
                height: 2.h,
                color: Colors.transparent,
              ),
              Text(
                "Showcase Your Projects",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: font1,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              Divider(
                height: 1.h,
                color: Colors.transparent,
              ),
              Text(
                "Bring your ideas to life, share your projects, and get feedback from a community passionate about growth and innovation.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11.sp,
                  fontFamily: font1,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
