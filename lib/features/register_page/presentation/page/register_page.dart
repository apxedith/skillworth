import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_field/intl_phone_number_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/custom_dropdown_textfield.dart';
import 'package:skillworth/core/widgets/custom_image_add_widget.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';
import 'package:skillworth/core/widgets/custom_phone_number_widget.dart';
import 'package:skillworth/core/widgets/custom_textfield_widget.dart';
import 'package:skillworth/core/widgets/social_sign_in_button.dart';
import 'package:skillworth/features/login_page/presentation/page/login_page.dart';
import 'package:skillworth/features/register_page/data/model/sign_up_model.dart';
import 'package:skillworth/features/register_page/presentation/bloc/bloc/register_bloc.dart';
import 'package:skillworth/features/register_page/presentation/page/verification_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SingleValueDropDownController occupationController =
      SingleValueDropDownController();
  IntPhoneNumber phoneNumber = IntPhoneNumber(
    code: "",
    dial_code: "",
    number: "",
  );

  bool nameStatus = true;
  bool emailStatus = true;
  XFile? _imageFile;
  bool passwordVisibility = false;
  void getPhNumberFromChild(IntPhoneNumber phoneNumber) {
    setState(() {
      phoneNumber = phoneNumber;
    });
  }

  void getPhotoFromChild(XFile? imageFile) {
    setState(() {
      setState(() {
        _imageFile = imageFile;
      });
    });
  }

  late FocusNode myFocusNode;
  final bloc = RegisterBloc();
  @override
  void initState() {
    super.initState();
    passwordVisibility = true;
    myFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    return BlocConsumer<RegisterBloc, RegisterState>(
      bloc: bloc,
      listener: (context, state) {
        print(state);
        if (state is RegisterPage1SuccessState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VerificationPage(),
              ));
        }
        if (state is RegisterPage1ErrorState) {}
      },
      builder: (context, state) {
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
                                InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: CircleAvatar(
                                    radius: 13.sp,
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .onTertiary
                                        .withOpacity(.5),
                                    child: Center(
                                      child: Icon(
                                        size: 13.sp,
                                        MdiIcons.arrowLeft,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Create your account",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: font3,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
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
                            "To create an account, please fill out the required details.",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: font3,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                          Divider(
                            height: 3.h,
                            color: Colors.transparent,
                          ),
                          Form(
                            key: _formKey1,
                            child: CustomTextfieldWidget(
                              fillColor: filledColor,
                              hintText: "Enter your name",
                              textEditingController: nameController,
                              label: "Name",
                              enable: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  setState(() {
                                    nameStatus = false;
                                  });
                                  return "requires";
                                } else {
                                  setState(() {
                                    nameStatus = true;
                                  });

                                  return null;
                                }
                              },
                              status: nameStatus,
                            ),
                          ),
                          Divider(
                            height: 3.h,
                            color: Colors.transparent,
                          ),
                          Form(
                            key: _formKey2,
                            child: CustomTextfieldWidget(
                              fillColor: filledColor,
                              hintText: "Enter your email id",
                              textEditingController: emailController,
                              label: "Email",
                              enable: true,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  setState(() {
                                    emailStatus = false;
                                  });
                                  return "requires";
                                } else {
                                  setState(() {
                                    emailStatus = true;
                                  });

                                  return null;
                                }
                              },
                              status: emailStatus,
                            ),
                          ),
                          Divider(
                            height: 3.h,
                            color: Colors.transparent,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: font1,
                                  fontWeight: FontWeight.w700,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                              Divider(
                                height: (1).h,
                                color: Colors.transparent,
                              ),
                              TextFormField(
                                controller: passwordController,
                                focusNode: myFocusNode,
                                onTapOutside: (event) => myFocusNode.unfocus(),
                                onChanged: (value) {},
                                validator: (value) {},
                                obscureText: passwordVisibility,
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontSize: 12.sp),
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsetsDirectional.symmetric(
                                    horizontal: 20.sp,
                                    vertical: 10.sp,
                                  ),
                                  filled: true,
                                  fillColor: filledColor,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.sp),
                                    borderSide: BorderSide(
                                      color: filledColor,
                                      width: 1,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.sp),
                                    borderSide: BorderSide(
                                      color: filledColor,
                                      width: 1,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.sp),
                                    borderSide: BorderSide(
                                      color: filledColor,
                                      width: 1,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7.sp),
                                    borderSide: BorderSide(
                                      color: filledColor,
                                      width: 1,
                                    ),
                                  ),
                                  errorText: "o",
                                  errorStyle: const TextStyle(
                                    height: 0,
                                    fontSize: .001,
                                    color: Colors.transparent,
                                  ),
                                  alignLabelWithHint: true,
                                  hintText: "Enter your password",
                                  hintStyle: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .tertiary
                                        .withOpacity(.3),
                                    fontSize: 11.sp,
                                    fontFamily: font3,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  suffixIconColor: Colors.grey,
                                  suffixIcon: IconButton(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .tertiary
                                        .withOpacity(.3),
                                    splashRadius: 1,
                                    onPressed: () {
                                      setState(() {
                                        passwordVisibility =
                                            !passwordVisibility;
                                      });
                                    },
                                    icon: Icon(
                                      passwordVisibility
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                    ),
                                  ),
                                ),
                                cursorColor:
                                    Theme.of(context).colorScheme.tertiary,
                                cursorErrorColor:
                                    Theme.of(context).colorScheme.tertiary,
                              ),
                            ],
                          ),
                          Divider(
                            height: 3.h,
                            color: Colors.transparent,
                          ),
                          CustomPhoneNumberWidget(
                            phoneController: phoneController,
                            callBack: getPhNumberFromChild,
                          ),
                          Divider(
                            height: 3.h,
                            color: Colors.transparent,
                          ),
                          CustomImagePickerWidget(
                            title: "Your photo",
                            callback: getPhotoFromChild,
                          ),
                          Divider(
                            height: 3.h,
                            color: Colors.transparent,
                          ),
                          CustomDropDownTextFieldWidget(
                            fillColor: filledColor,
                            hintText: "Select your occupation",
                            label: "Occupation",
                            enable: true,
                            status: emailStatus,
                            controller: occupationController,
                          ),
                          Divider(
                            height: (4).h,
                            color: Colors.transparent,
                          ),
                          CustomLongButton(
                            fontSize: 12.sp,
                            height: (13 / 2).h,
                            borderColor:
                                Theme.of(context).colorScheme.secondary,
                            radius: 5.sp,
                            width: 100.w,
                            buttonColor:
                                Theme.of(context).colorScheme.secondary,
                            buttonTitle: "Continue",
                            onPressed: () {
                              SignUpModel signUpModel = SignUpModel(
                                email: emailController.text,
                                password: passwordController.text,
                                fullName: nameController.text,
                                phone: phoneController.text,
                                profile_img: _imageFile,
                                occupation:
                                    occupationController.dropDownValue!.name,
                              );
                              bloc.add(
                                  RegisterPage1Event(signUpModel: signUpModel));
                            },
                            isLoading: false,
                            textColor: Theme.of(context).colorScheme.tertiary,
                          ),
                          Divider(
                            height: (5).h,
                            color: Colors.transparent,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "OR",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontFamily: font1,
                                  fontWeight: FontWeight.w800,
                                  color: Theme.of(context).colorScheme.tertiary,
                                  letterSpacing: 2.sp,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: (5).h,
                            color: Colors.transparent,
                          ),
                          SocialSignInButton(
                            buttonColor: Colors.transparent,
                            buttonTitle: "Continue with Google",
                            onPressed: () {},
                            isLoading: false,
                            textColor: Colors.white,
                            width: 100.w,
                            radius: 7.sp,
                            borderColor: Colors.white,
                            logo: googleIcon,
                          ),
                          Divider(
                            height: (2).h,
                            color: Colors.transparent,
                          ),
                          SocialSignInButton(
                            buttonColor: Colors.transparent,
                            buttonTitle: "Continue with Facebook",
                            onPressed: () {},
                            isLoading: false,
                            textColor: Colors.white,
                            width: 100.w,
                            radius: 7.sp,
                            borderColor: Colors.white,
                            logo: facebookIcon,
                          ),
                          Divider(
                            height: (2).h,
                            color: Colors.transparent,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: font3,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    decorationThickness: 2,
                                    fontSize: 12.sp,
                                    fontFamily: font3,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                              Text(
                                "instead.",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: font3,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                            ],
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
      },
    );
  }
}
