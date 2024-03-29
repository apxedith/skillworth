import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';
import 'package:skillworth/core/widgets/overlapping_profile_widget.dart';
import 'package:skillworth/features/project_management_page/presentation/widget/project_details_view_widget.dart';

class ProjectViewWidget extends StatefulWidget {
  const ProjectViewWidget({super.key});

  @override
  State<ProjectViewWidget> createState() => _ProjectViewWidgetState();
}

class _ProjectViewWidgetState extends State<ProjectViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: (1.5).h, horizontal: 4.w),
        height: 21.h,
        width: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.sp)),
          color: Theme.of(context).colorScheme.tertiary.withOpacity(.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 18.h,
              width: 25.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.sp)),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(reference),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 4.w),
                  height: (3.5).h,
                  width: 58.w,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: (3).h,
                        width: 45.w,
                        child: Row(
                          children: [
                            Container(
                              height: (3.5).h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.sp)),
                                border: Border.all(
                                  color: Colors.amber,
                                  width: 1,
                                ),
                                color: Colors.amber.withOpacity(.5),
                              ),
                              child: Center(
                                child: Text(
                                  "Full-Stack",
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    fontFamily: font5,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Container(
                              height: (3).h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.sp)),
                                border: Border.all(
                                  color: secondaryColor,
                                  width: 1,
                                ),
                                color: Colors.transparent,
                              ),
                              child: Center(
                                child: Text(
                                  "IOT",
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    fontFamily: font5,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          MdiIcons.windowClose,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: .25.h,
                  color: Colors.transparent,
                ),
                Container(
                  height: 9.h,
                  width: 58.w,
                  padding: EdgeInsets.only(left: 4.w),
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full-Stack Project",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: font1,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consecte adipiscing elit. ",
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontFamily: font3,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context)
                              .colorScheme
                              .tertiary
                              .withOpacity(.6),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: .25.h,
                  color: Colors.transparent,
                ),
                Container(
                  height: 5.h,
                  width: 58.w,
                  color: Colors.transparent,
                  padding: EdgeInsets.only(left: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomLongButton(
                        height: 4.h,
                        buttonColor: Theme.of(context).colorScheme.secondary,
                        buttonTitle: "View",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ProjectDetailsViewWidget(),
                              ));
                        },
                        isLoading: false,
                        textColor: Theme.of(context).colorScheme.tertiary,
                        width: 20.w,
                        radius: 7.sp,
                        borderColor: Colors.transparent,
                        fontSize: 9.sp,
                      ),
                      Container(
                        height: 5.h,
                        width: 4.5.h * (2 + .6),
                        color: Colors.transparent,
                        child: stackedHeads(
                          4.5.w,
                          4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
