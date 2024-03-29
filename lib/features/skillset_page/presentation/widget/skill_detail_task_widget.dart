import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth_mobile/core/constants/constants.dart';
import 'package:skillworth_mobile/features/skillset_page/presentation/widget/your_task_view_widget.dart';

class SkillDetailTaskWidget extends StatefulWidget {
  const SkillDetailTaskWidget({super.key});

  @override
  State<SkillDetailTaskWidget> createState() => _SkillDetailTaskWidgetState();
}

class _SkillDetailTaskWidgetState extends State<SkillDetailTaskWidget> {
  @override
  Widget build(BuildContext context) {
    int count = 5;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      height: 5.h + (8.5.h * count),
      width: 100.w,
      color: Colors.transparent,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 2.h),
              height: 5.h,
              width: 100.w,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Tasks",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: font1,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontFamily: font1,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 9.h * count,
              width: 100.w,
              color: Colors.transparent,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: count,
                itemBuilder: (context, index) {
                  return YourTaskViewWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
