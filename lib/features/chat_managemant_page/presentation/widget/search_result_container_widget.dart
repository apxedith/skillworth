import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class SearchResultContainerWidget extends StatefulWidget {
  const SearchResultContainerWidget({super.key});

  @override
  State<SearchResultContainerWidget> createState() =>
      _SearchResultContainerWidgetState();
}

class _SearchResultContainerWidgetState
    extends State<SearchResultContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51.h,
      width: 100.w,
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            height: 5.h,
            width: 100.w,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "38 results",
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
          Container(
            height: 45.h,
            width: 100.w,
            color: Colors.transparent,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 14,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: Container(
                    width: 100.w,
                    height: 10.h,
                    color: Colors.transparent,
                    child: Center(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Padding(
                          padding: EdgeInsets.only(
                            left: 1.h,
                          ),
                          child: CircleAvatar(
                            radius: 3.5.h,
                            backgroundImage: const AssetImage(
                              defalut,
                            ),
                          ),
                        ),
                        title: Text(
                          "Emma Watson",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: font1,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        subtitle: Container(
                          height: 5.h,
                          width: 50.w,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Stack Developer",
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  fontFamily: font1,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontFamily: font1,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        trailing: Column(
                          children: [
                            Icon(
                              MdiIcons.windowClose,
                              size: 15.sp,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
