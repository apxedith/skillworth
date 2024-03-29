import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/circular_avatar_icon_widget.dart';

class SkillDetailTopWidget extends StatefulWidget {
  const SkillDetailTopWidget({super.key});

  @override
  State<SkillDetailTopWidget> createState() => _SkillDetailTopWidgetState();
}

class _SkillDetailTopWidgetState extends State<SkillDetailTopWidget> {
  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    return Container(
      height: 32.h,
      width: 100.w,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(reference),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.sp),
          bottomRight: Radius.circular(15.sp),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            height: safeAreaTop + 2.h,
            color: Colors.transparent,
          ),
          Container(
            height: 7.h,
            width: 100.w,
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircularAvatarIconWidget(
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .onTertiary
                        .withOpacity(.5),
                    iconColor: Theme.of(context).colorScheme.tertiary,
                    iconSize: 18.sp,
                    radius: 15.sp,
                    iconData: MdiIcons.arrowLeft,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularAvatarIconWidget(
                        backgroundColor: Theme.of(context)
                            .colorScheme
                            .onTertiary
                            .withOpacity(.5),
                        iconColor: Theme.of(context).colorScheme.tertiary,
                        iconSize: 18.sp,
                        radius: 15.sp,
                        iconData: MdiIcons.plus,
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      CircularAvatarIconWidget(
                        backgroundColor: Theme.of(context)
                            .colorScheme
                            .onTertiary
                            .withOpacity(.5),
                        iconColor: Theme.of(context).colorScheme.tertiary,
                        iconSize: 20.sp,
                        radius: 15.sp,
                        iconData: MdiIcons.dotsHorizontal,
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 18.h,
            width: 100.w,
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                  width: 100.w,
                  child: Row(
                    children: [
                      Text(
                        "Full-Stack  Skill",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: font1,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                        height: 4.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(4.sp),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: font3,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Icon(
                              MdiIcons.arrowUp,
                              size: 13.sp,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: font1,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    Text(
                      maxLines: 2,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus id commodo egestas metus interdum dolor.",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontFamily: font1,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
