import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/circular_avatar_icon_widget.dart';
import 'package:skillworth/core/widgets/overlapping_profile_widget.dart';
import 'package:skillworth/features/project_management_page/presentation/widget/project_detail_skills_showcase_widget.dart';

class ProjectDetailsTopWidget extends StatefulWidget {
  const ProjectDetailsTopWidget({super.key});

  @override
  State<ProjectDetailsTopWidget> createState() =>
      _ProjectDetailsTopWidgetState();
}

class _ProjectDetailsTopWidgetState extends State<ProjectDetailsTopWidget> {
  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    return Container(
      height: 60.h,
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
            height: 8.h,
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
            height: 45.h,
            width: 100.w,
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Full-Stack Project",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: font1,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                Text(
                  "Wednesday 10 Jan, 2024",
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontFamily: font1,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                Divider(
                  height: 1.h,
                  color: Colors.transparent,
                ),
                Container(
                  height: 5.h,
                  width: 50.w,
                  color: Colors.transparent,
                  child: stackedHeads(
                    4.5.w,
                    5,
                  ),
                ),
                Divider(
                  height: 1.h,
                  color: Colors.transparent,
                ),
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
                Divider(
                  height: 1.h,
                  color: Colors.transparent,
                ),
                const ProjectDetailsSkillsShowCaseWidget(
                  fontColor: Color.fromARGB(255, 253, 17, 0),
                  color: Color.fromARGB(255, 255, 152, 145),
                  title: "Skills",
                ),
                Divider(
                  height: 1.h,
                  color: Colors.transparent,
                ),
                const ProjectDetailsSkillsShowCaseWidget(
                  color: Color.fromARGB(255, 121, 192, 251),
                  fontColor: Colors.blue,
                  title: "Project  Domain",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
