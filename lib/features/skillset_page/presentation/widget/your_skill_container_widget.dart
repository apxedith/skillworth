import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/features/skillset_page/presentation/widget/your_skill_view_widget.dart';

class YourSkillsContainer extends StatefulWidget {
  const YourSkillsContainer({super.key});

  @override
  State<YourSkillsContainer> createState() => _YourSkillsContainerState();
}

class _YourSkillsContainerState extends State<YourSkillsContainer> {
  @override
  Widget build(BuildContext context) {
    int count = 2;
    return Container(
      padding: EdgeInsets.all(2.h),
      height: 9.h + (21.h * count),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Skills",
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
                      "+ Add Skills",
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
              height: 21.h * count,
              width: 100.w,
              color: Colors.transparent,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: count,
                itemBuilder: (context, index) {
                  return YourSkillViewWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
