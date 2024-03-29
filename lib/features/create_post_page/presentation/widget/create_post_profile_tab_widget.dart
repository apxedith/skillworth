import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class CreatePostProfileTabWidget extends StatefulWidget {
  const CreatePostProfileTabWidget({super.key});

  @override
  State<CreatePostProfileTabWidget> createState() =>
      _CreatePostProfileTabWidgetState();
}

class _CreatePostProfileTabWidgetState
    extends State<CreatePostProfileTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        // horizontal: 2.h,
        vertical: .5.h,
      ),
      height: 10.h,
      width: 100.w,
      color: Colors.transparent,
      child: Row(
        children: [
          CircleAvatar(
            radius: 4.h,
            backgroundImage: AssetImage(
              defalut,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Alex Bob",
                style: TextStyle(
                  fontSize: 15.sp,
                  letterSpacing: 1,
                  fontFamily: font1,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              Divider(
                height: .5.h,
                color: Colors.transparent,
              ),
              Container(
                height: 3.h,
                width: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45.sp)),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      MdiIcons.earth,
                      size: 2.h,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Public",
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontFamily: font1,
                        // fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 3.h,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
