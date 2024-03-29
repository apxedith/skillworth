import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

class NotesViewWidget extends StatefulWidget {
  final int index;
  const NotesViewWidget({super.key, required this.index});

  @override
  State<NotesViewWidget> createState() => _NotesViewWidgetState();
}

class _NotesViewWidgetState extends State<NotesViewWidget> {
  @override
  Widget build(BuildContext context) {
    int index = widget.index + 1;
    return Padding(
      padding: EdgeInsets.only(bottom: 1.h),
      child: Container(
        padding: EdgeInsets.all(2.h),
        height: 35.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: Container(
          height: 31.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            borderRadius: BorderRadius.circular(4.sp),
            border: Border.all(color: Theme.of(context).colorScheme.secondary),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 5.h,
                width: 100.w,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 14.w,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(1.sp),
                      ),
                      child: Center(
                        child: Text(
                          '${index.toString()}',
                          style: TextStyle(
                            fontSize: 10.5.sp,
                            fontFamily: font3,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 17.h,
                width: 100.w,
                color: Colors.transparent,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
                      child: Row(
                        children: [
                          Icon(
                            MdiIcons.circleSmall,
                            size: 20.sp,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text(
                            maxLines: 2,
                            "Lorem ipsum dolor sit amet",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: font1,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 2.h,
                  vertical: 1.h,
                ),
                child: CustomLongButton(
                  fontSize: 11.sp,
                  height: (6).h,
                  borderColor: Theme.of(context).colorScheme.secondary,
                  radius: 5.sp,
                  width: 100.w,
                  buttonColor: Theme.of(context).colorScheme.onPrimaryContainer,
                  buttonTitle: "Open full notes",
                  onPressed: () {},
                  isLoading: false,
                  textColor: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
