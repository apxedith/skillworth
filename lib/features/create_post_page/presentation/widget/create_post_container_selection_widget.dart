import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';

class CreatePostContainerSelectionWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final Function()? onTap;
  const CreatePostContainerSelectionWidget({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  State<CreatePostContainerSelectionWidget> createState() =>
      _CreatePostContainerSelectionWidgetState();
}

class _CreatePostContainerSelectionWidgetState
    extends State<CreatePostContainerSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        height: 5.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: filledColor,
          borderRadius: BorderRadius.all(Radius.circular(7.sp)),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    size: 17.sp,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: font1,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15.sp,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
