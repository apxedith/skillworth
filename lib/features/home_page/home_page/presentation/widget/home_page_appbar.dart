import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class HomePageAppBarWidget extends StatelessWidget {
  const HomePageAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      height: 16.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondary.withOpacity(.1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.sp),
          bottomRight: Radius.circular(15.sp),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: (3).h,
                    backgroundImage: AssetImage(defalut),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    appName,
                    style: TextStyle(
                      letterSpacing: 1.5.sp,
                      fontSize: 12.sp,
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: font1,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 15.sp,
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .onTertiary
                          .withOpacity(.5),
                      child: Center(
                        child: Icon(
                          size: 15.sp,
                          MdiIcons.magnify,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 15.sp,
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .onTertiary
                          .withOpacity(.5),
                      child: Center(
                        child: Icon(
                          size: 14.sp,
                          MdiIcons.bell,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
