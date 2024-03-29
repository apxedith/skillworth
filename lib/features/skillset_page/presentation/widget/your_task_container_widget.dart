import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/features/skillset_page/presentation/widget/your_task_view_widget.dart';

class YourTaskContainerWidget extends StatefulWidget {
  const YourTaskContainerWidget({super.key});

  @override
  State<YourTaskContainerWidget> createState() =>
      _YourTaskContainerWidgetState();
}

class _YourTaskContainerWidgetState extends State<YourTaskContainerWidget> {
  @override
  Widget build(BuildContext context) {
    int count = 5;
    return Container(
      padding: EdgeInsets.all(2.h),
      height: 9.h + (8.h * count),
      width: 100.w,
      color: Colors.transparent,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 5.h,
              width: 100.w,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 8.h * count,
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
