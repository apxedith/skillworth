import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class NotificationViewWidget extends StatelessWidget {
  final String profileUrl;
  final String title;
  final String content;
  const NotificationViewWidget({
    super.key,
    required this.title,
    required this.content,
    required this.profileUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.5.h),
      child: Container(
        padding: EdgeInsets.only(left: 2.h, right: 1.h),
        height: 9.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.sp)),
          color: Theme.of(context).colorScheme.tertiary.withOpacity(.09),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 18.sp,
              backgroundImage: AssetImage(profileUrl),
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: font1,
                    letterSpacing: .5.sp,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontFamily: font1,
                    fontWeight: FontWeight.w400,
                    color:
                        Theme.of(context).colorScheme.tertiary.withOpacity(.6),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
