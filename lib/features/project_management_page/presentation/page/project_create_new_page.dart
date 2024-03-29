import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/circular_avatar_icon_widget.dart';
import 'package:skillworth/core/widgets/custom_description_textfield_widget.dart';
import 'package:skillworth/core/widgets/custom_multi_dropdown_textfield_widget.dart';
import 'package:skillworth/core/widgets/custom_textfield_widget.dart';

class ProjectCreateNewPage extends StatefulWidget {
  const ProjectCreateNewPage({super.key});

  @override
  State<ProjectCreateNewPage> createState() => _ProjectCreateNewPageState();
}

class _ProjectCreateNewPageState extends State<ProjectCreateNewPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController taskController = TextEditingController();

  List<DropDownValueModel> selectedPeople = [];

  void getSelectedPeopleFromChild(List<DropDownValueModel> selected) {
    setState(() {
      setState(() {
        selectedPeople = selected;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    double safeAreaLeft = Utils().getSafeAreaLeft(context: context);
    double safeAreaRight = Utils().getSafeAreaRight(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Container(
          height: 100.h - (safeAreaBottom + safeAreaTop),
          width: 100.w - (safeAreaRight + safeAreaLeft),
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(2.h),
                height: 15.h,
                width: 100.w,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 6.h,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircularAvatarIconWidget(
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiary
                                  .withOpacity(.5),
                              iconColor: Theme.of(context).colorScheme.tertiary,
                              iconSize: 18.sp,
                              radius: 15.sp,
                              iconData: MdiIcons.arrowLeft,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Add Project",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: font1,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.h),
                height: 85.h - (safeAreaTop + safeAreaBottom),
                width: 100.w,
                color: Colors.transparent,
                child: ListView(
                  children: [
                    CustomTextfieldWidget(
                      hintText: "Enter project name",
                      textEditingController: nameController,
                      label: "Project Name",
                      enable: true,
                      validator: (p0) {
                        return null;
                      },
                      status: true,
                      fillColor: filledColor,
                    ),
                    Divider(
                      height: 2.h,
                      color: Colors.transparent,
                    ),
                    CustomDescriptionTextfieldWidget(
                      hintText: "Enter description",
                      textEditingController: descriptionController,
                      label: "Project Description",
                      enable: true,
                      validator: (p0) {
                        return null;
                      },
                      status: true,
                      fillColor: filledColor,
                    ),
                    Divider(
                      height: 2.h,
                      color: Colors.transparent,
                    ),
                    CustomTextfieldWidget(
                      hintText: "Enter task",
                      textEditingController: nameController,
                      label: "Task",
                      enable: true,
                      validator: (p0) {
                        return null;
                      },
                      status: true,
                      fillColor: filledColor,
                    ),
                    Divider(
                      height: 2.h,
                      color: Colors.transparent,
                    ),
                    CustomMultiDropdownTextFieldWidget(
                      fillColor: filledColor,
                      status: true,
                      hintText: "Select",
                      label: "People",
                      enable: true,
                      callback: getSelectedPeopleFromChild,
                      list: [],
                    ),
                    Divider(
                      height: 1.h,
                      color: Colors.transparent,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "+ Add people",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                            fontFamily: font3,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: .5.h,
                      color: Colors.transparent,
                    ),
                    CustomMultiDropdownTextFieldWidget(
                      fillColor: filledColor,
                      status: true,
                      hintText: "Select",
                      label: "Skills",
                      enable: true,
                      callback: getSelectedPeopleFromChild,
                      list: [],
                    ),
                    Divider(
                      height: 3.h,
                      color: Colors.transparent,
                    ),
                    Text(
                      "Milestones",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: font1,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    Divider(
                      height: 3.h,
                      color: Colors.transparent,
                    ),
                    CustomTextfieldWidget(
                      hintText: "Milestones Name",
                      textEditingController: nameController,
                      label: "Set Milestones",
                      enable: true,
                      validator: (p0) {
                        return null;
                      },
                      status: true,
                      fillColor: filledColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
