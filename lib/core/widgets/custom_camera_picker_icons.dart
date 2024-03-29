import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomSheetIcons extends StatefulWidget {
  final IconData icon;
  final String name;
  final Function() onTap;
  const BottomSheetIcons({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap,
  });

  @override
  State<BottomSheetIcons> createState() => _BottomSheetIconsState();
}

class _BottomSheetIconsState extends State<BottomSheetIcons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: widget.onTap,
          child: CircleAvatar(
            radius: (3.5).h,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.background,
              radius: (3.3).h,
              child: Icon(
                widget.icon,
                size: 20.sp,
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.transparent,
          height: (.5).h,
        ),
        Text(
          widget.name,
          style: TextStyle(
            fontSize: 12.sp,
            color: Theme.of(context).colorScheme.tertiary.withOpacity(.7),
          ),
        )
      ],
    );
  }
}
