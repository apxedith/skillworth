import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/widgets/custom_image_add_widget.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';

class YourTaskViewWidget extends StatefulWidget {
  const YourTaskViewWidget({super.key});

  @override
  State<YourTaskViewWidget> createState() => _YourTaskViewWidgetState();
}

class _YourTaskViewWidgetState extends State<YourTaskViewWidget> {
  XFile? _imageFile;
  void getPhotoFromChild(XFile? imageFile) {
    setState(() {
      setState(() {
        _imageFile = imageFile;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        height: 7.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              height: 5.h,
              width: 55.w,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  // textAlign: TextAlign.center,
                  "Lorem ipsum dolor sit amet.",
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontFamily: font1,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
            ),
            CustomLongButton(
              fontSize: 9.sp,
              height: 4.h,
              borderColor: Theme.of(context).colorScheme.secondary,
              radius: 5.sp,
              width: 25.w,
              buttonColor: Theme.of(context).colorScheme.secondary,
              buttonTitle: "Submit",
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        right: 2.h,
                        top: 8.h,
                      ),
                      height: 50.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45.sp),
                            topRight: Radius.circular(45.sp)),
                      ),
                      child: ListView(
                        children: [
                          CustomImagePickerWidget(
                            callback: getPhotoFromChild,
                            title: "Task Submission",
                          ),
                          Divider(
                            height: 4.h,
                            color: Colors.transparent,
                          ),
                          CustomLongButton(
                            fontSize: 12.sp,
                            height: (6.5).h,
                            borderColor:
                                Theme.of(context).colorScheme.secondary,
                            radius: 5.sp,
                            width: 100.w,
                            buttonColor:
                                Theme.of(context).colorScheme.secondary,
                            buttonTitle: "Submit",
                            onPressed: () {},
                            isLoading: false,
                            textColor: Theme.of(context).colorScheme.tertiary,
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Theme.of(context).colorScheme.tertiary,
                                fontSize: 11.sp,
                                fontFamily: font1,
                                fontWeight: FontWeight.w500,
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              isLoading: false,
              textColor: Theme.of(context).colorScheme.tertiary,
            ),
          ],
        ),
      ),
    );
  }
}
