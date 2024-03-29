import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class GetStartedContainer3 extends StatelessWidget {
  const GetStartedContainer3({super.key});

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
                "Earn Badges And Connections",
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
                "Impress potential clients with your achievements and the strong network you build here at SkillWorth, your gateway to new opportunities.",
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
