import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/widgets/custom_camera_picker_icons.dart';

class CustomImagePickerWidget extends StatefulWidget {
  final String title;
  final Function(XFile?) callback;
  const CustomImagePickerWidget({
    super.key,
    required this.callback,
    required this.title,
  });

  @override
  State<CustomImagePickerWidget> createState() =>
      _CustomImagePickerWidgetState();
}

class _CustomImagePickerWidgetState extends State<CustomImagePickerWidget> {
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: font3,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ],
        ),
        Divider(
          height: 1.h,
          color: Colors.transparent,
        ),
        DottedBorder(
          color: Theme.of(context).colorScheme.tertiary,
          dashPattern: const [5],
          borderType: BorderType.RRect,
          borderPadding: EdgeInsets.zero,
          strokeWidth: .5,
          radius: Radius.circular(7.sp),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(7.sp),
            ),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  barrierColor:
                      Theme.of(context).colorScheme.tertiary.withOpacity(.1),
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 12.h,
                width: 100.w,
                color: Theme.of(context).colorScheme.tertiary.withOpacity(.11),
                child: Center(
                  child: _imageFile != null
                      ? Container(
                          height: 12.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: FileImage(
                                File(_imageFile!.path),
                              ),
                            ),
                          ),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              MdiIcons.arrowCollapseUp,
                              color: Theme.of(context).colorScheme.tertiary,
                              size: 18.sp,
                            ),
                            Divider(
                              height: 1.h,
                              color: Colors.transparent,
                            ),
                            Text(
                              "Click here to browse media",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontFamily: font3,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                          ],
                        ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 25.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(15.sp)),
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 2.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Your Photo",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontFamily: font3,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ],
          ),
          Container(
            height: 17.h,
            width: 75.w,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                BottomSheetIcons(
                  name: "Camera",
                  icon: Icons.camera_alt,
                  onTap: () {
                    takePhoto(ImageSource.camera);
                    Navigator.pop(context);
                  },
                ),
                BottomSheetIcons(
                  name: "Gallery",
                  icon: Icons.photo_size_select_actual,
                  onTap: () {
                    takePhoto(ImageSource.gallery);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    print("check");
    XFile? image = await _picker.pickImage(source: source);
    setState(() {
      _imageFile = image;
      widget.callback(image);
    });
  }
}
