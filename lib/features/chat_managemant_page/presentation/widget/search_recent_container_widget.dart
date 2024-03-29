import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class SearchRecentContainerWidget extends StatefulWidget {
  const SearchRecentContainerWidget({super.key});

  @override
  State<SearchRecentContainerWidget> createState() =>
      _SearchRecentContainerWidgetState();
}

class _SearchRecentContainerWidgetState
    extends State<SearchRecentContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.h,
      width: 100.w,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Searches",
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: font1,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          Container(
            height: 12.h,
            width: 100.w,
            color: Colors.transparent,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(1.h),
                  child: Container(
                    height: 12.h,
                    width: 25.w,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 3.5.h,
                          backgroundImage: const AssetImage(
                            defalut,
                          ),
                        ),
                        Text(
                          "Emma Watson",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontFamily: font1,
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                      ],
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
