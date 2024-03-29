import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class GetStartedContainer1 extends StatelessWidget {
  const GetStartedContainer1({super.key});

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
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Welcome To ",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: font1,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  TextSpan(
                    text: "SKILLWORTH",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: font1,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ]),
              ),
              Divider(
                height: 1.h,
                color: Colors.transparent,
              ),
              Text(
                "Dive into a world where upgrading your skills, learning new ones, and connecting with peers is just the beginning of your journey.",
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
