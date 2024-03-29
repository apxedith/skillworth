import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class ProjectDetailsSkillsShowCaseWidget extends StatelessWidget {
  final String title;
  final Color color;
  final Color fontColor;
  const ProjectDetailsSkillsShowCaseWidget({
    super.key,
    required this.title,
    required this.color,
    required this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.5.h,
      width: 100.w,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 13.sp,
              fontFamily: font1,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.tertiary,
              height: 0,
            ),
          ),
          Divider(
            height: .5.h,
            color: Colors.transparent,
          ),
          Row(
            children: [
              Container(
                height: (3.5).h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.sp)),
                  border: Border.all(
                    color: color,
                    width: 1,
                  ),
                  color: color,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Text(
                      "IOT",
                      style: TextStyle(
                        height: 0,
                        fontSize: 10.sp,
                        fontFamily: font1,
                        fontWeight: FontWeight.w700,
                        color: fontColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
