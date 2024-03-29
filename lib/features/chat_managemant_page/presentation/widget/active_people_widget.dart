import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';

class ActivePeopleWidget extends StatelessWidget {
  const ActivePeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.h,
      width: 100.w,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Active People",
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: font1,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          Container(
            height: 10.h,
            width: 100.w,
            color: Colors.transparent,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: 1.h,
                  ),
                  child: Container(
                    height: 8.h,
                    width: 8.h,
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 4.h,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 3.5.h,
                              backgroundImage: const AssetImage(
                                defalut,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 30,
                          child: Icon(
                            MdiIcons.circleSmall,
                            color: activeIndicatorColor,
                            size: 50.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
