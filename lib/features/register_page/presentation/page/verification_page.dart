import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/custom_image_add_widget.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';
import 'package:skillworth/core/widgets/custom_multi_dropdown_textfield_widget.dart';
import 'package:skillworth/features/register_page/presentation/page/add_skills_page.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  List<DropDownValueModel> selectedDocuments = [];

  XFile? adhaar;
  XFile? pan;
  XFile? passport;
  XFile? license;

  void getAdhaarFromChild(XFile? imageFile) {
    setState(() {
      setState(() {
        adhaar = imageFile;
      });
    });
  }

  void getPanFromChild(XFile? imageFile) {
    setState(() {
      setState(() {
        pan = imageFile;
      });
    });
  }

  void getPassportFromChild(XFile? imageFile) {
    setState(() {
      setState(() {
        passport = imageFile;
      });
    });
  }

  void getLicenseFromChild(XFile? imageFile) {
    setState(() {
      setState(() {
        license = imageFile;
      });
    });
  }

  void getSelectedDocumentsFromChild(List<DropDownValueModel> selected) {
    setState(() {
      setState(() {
        selectedDocuments = selected;
      });
    });
  }

  getDocument(DropDownValueModel doc) {
    if (doc.name == "Adhaar Card") {
      return getAdhaarFromChild;
    } else if (doc.name == "Pan Card") {
      return getPanFromChild;
    } else if (doc.name == "Passport") {
      return getPassportFromChild;
    } else {
      return getLicenseFromChild;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Container(
            height: 100.h - (safeAreaBottom + safeAreaTop),
            width: 100.w,
            padding: EdgeInsets.only(
              top: 8.h,
              bottom: 2.h,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      appName,
                      style: TextStyle(
                        letterSpacing: 2.sp,
                        fontSize: 13.sp,
                        color: Theme.of(context).colorScheme.secondary,
                        fontFamily: font1,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 3.h,
                  color: Colors.transparent,
                ),
                SizedBox(
                  height: 80.h,
                  width: 100.w,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 6.h,
                        width: 100.w,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // InkWell(
                            //   splashColor: Colors.transparent,
                            //   highlightColor: Colors.transparent,
                            //   onTap: () {
                            //     Navigator.pop(context);
                            //   },
                            //   child: CircleAvatar(
                            //     radius: 13.sp,
                            //     backgroundColor: Theme.of(context)
                            //         .colorScheme
                            //         .onTertiary
                            //         .withOpacity(.5),
                            //     child: Center(
                            //       child: Icon(
                            //         size: 13.sp,
                            //         MdiIcons.arrowLeft,
                            //         color:
                            //             Theme.of(context).colorScheme.tertiary,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   width: 5.w,
                            // ),
                            Text(
                              "Verify your documents",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: font3,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 1.h,
                        color: Colors.transparent,
                      ),
                      Text(
                        "Upload the documents in pdf or jpg format for verification process.",
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: font3,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      Divider(
                        height: 1.h,
                        color: Colors.transparent,
                      ),
                      CustomMultiDropdownTextFieldWidget(
                        callback: getSelectedDocumentsFromChild,
                        fillColor: filledColor,
                        status: true,
                        hintText: "Select document type",
                        label: "",
                        enable: true,
                        list: documentList,
                      ),
                      Divider(
                        height: 3.h,
                        color: Colors.transparent,
                      ),
                      (selectedDocuments.isNotEmpty)
                          ? SizedBox(
                              height: 20.h * (selectedDocuments.length),
                              width: 100.w,
                              child: ListView.builder(
                                itemCount: selectedDocuments.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(bottom: 2.h),
                                    child: CustomImagePickerWidget(
                                      title: selectedDocuments[index].name,
                                      callback:
                                          getDocument(selectedDocuments[index]),
                                    ),
                                  );
                                },
                              ),
                            )
                          : const Text(""),
                      CustomLongButton(
                        fontSize: 12.sp,
                        height: (13 / 2).h,
                        borderColor: Theme.of(context).colorScheme.secondary,
                        radius: 5.sp,
                        width: 100.w,
                        buttonColor: Theme.of(context).colorScheme.secondary,
                        buttonTitle: "Continue",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddSkillsPage(),
                              ));
                        },
                        isLoading: false,
                        textColor: Theme.of(context).colorScheme.tertiary,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AddSkillsPage(),
                                    ));
                              },
                              child: Text(
                                "SKIP",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontFamily: font2,
                                  letterSpacing: 1.sp,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
