import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/custom_image_add_widget.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';
import 'package:skillworth/features/create_post_page/presentation/widget/create_post_container_selection_widget.dart';
import 'package:skillworth/features/create_post_page/presentation/widget/create_post_profile_tab_widget.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
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
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    double safeAreaLeft = Utils().getSafeAreaLeft(context: context);
    double safeAreaRight = Utils().getSafeAreaRight(context: context);

    return Container(
      padding: EdgeInsets.all(2.h),
      height: 100.h - (safeAreaBottom + safeAreaTop),
      width: 100.w - (safeAreaRight + safeAreaLeft),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Container(
            height: 15.h,
            width: 100.w,
            color: Colors.transparent,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Create Post",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: font1,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80.h,
            width: 100.w,
            child: ListView(
              children: [
                const CreatePostProfileTabWidget(),
                CustomImagePickerWidget(
                  callback: getPhotoFromChild,
                  title: "",
                ),
                Divider(
                  color: Colors.transparent,
                  height: 2.h,
                ),
                TextField(
                  cursorColor: Theme.of(context).colorScheme.tertiary,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondary, // Underline color
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondary, // Underline color
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondary, // Underline color when focused
                      ),
                    ),
                    contentPadding: EdgeInsetsDirectional.symmetric(
                      // horizontal: 20.sp,
                      vertical: 15.sp,
                    ),
                    suffixIcon: Icon(
                      MdiIcons.emoticon,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    hintText: "Write a caption",
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  height: 2.h,
                ),
                CreatePostContainerSelectionWidget(
                  icon: MdiIcons.web,
                  title: "Add Location",
                  onTap: () {},
                ),
                Divider(
                  color: Colors.transparent,
                  height: 1.h,
                ),
                CreatePostContainerSelectionWidget(
                  icon: MdiIcons.tag,
                  title: "Tag People",
                  onTap: () {},
                ),
                Divider(
                  color: Colors.transparent,
                  height: 1.h,
                ),
                CreatePostContainerSelectionWidget(
                  icon: MdiIcons.dotsSquare,
                  title: "Add Skills",
                  onTap: () {},
                ),
                Divider(
                  color: Colors.transparent,
                  height: 5.h,
                ),
                CustomLongButton(
                  fontSize: 13.sp,
                  height: (13 / 2).h,
                  borderColor: Theme.of(context).colorScheme.secondary,
                  radius: 5.sp,
                  width: 100.w,
                  buttonColor: Theme.of(context).colorScheme.secondary,
                  buttonTitle: "Post",
                  onPressed: () {},
                  isLoading: false,
                  textColor: Theme.of(context).colorScheme.tertiary,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
