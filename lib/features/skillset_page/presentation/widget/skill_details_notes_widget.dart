import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/features/skillset_page/presentation/widget/notes_view_widget.dart';

class SkillsDetailNotesWidget extends StatefulWidget {
  const SkillsDetailNotesWidget({super.key});

  @override
  State<SkillsDetailNotesWidget> createState() =>
      _SkillsDetailNotesWidgetState();
}

class _SkillsDetailNotesWidgetState extends State<SkillsDetailNotesWidget> {
  @override
  Widget build(BuildContext context) {
    int count = 2;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      height: 6.h + (36.h * count),
      width: 100.w,
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 2.h),
            height: 5.h,
            width: 100.w,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Notes",
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
          Divider(
            height: 1.h,
            color: Colors.transparent,
          ),
          Container(
            height: 36.h * count,
            width: 100.w,
            color: Colors.transparent,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              itemCount: count,
              itemBuilder: (context, index) {
                return NotesViewWidget(
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
