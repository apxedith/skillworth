import 'package:flutter/material.dart';
import 'package:intl_phone_number_field/intl_phone_number_field.dart';

import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';
import 'package:skillworth/core/widgets/custom_phone_number_widget.dart';
import 'package:skillworth/core/widgets/social_sign_in_button.dart';
import 'package:skillworth/features/login_page/presentation/page/otp_verification_page.dart';
import 'package:skillworth/features/register_page/presentation/page/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneNumberController = TextEditingController();
  late FocusNode myFocusNode;
  IntPhoneNumber number = IntPhoneNumber(
    code: "",
    dial_code: "",
    number: "",
  );
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }

  void getPhNumberFromChild(IntPhoneNumber phoneNumber) {
    setState(() {
      number = phoneNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Container(
          height: 100.h - (safeAreaBottom + safeAreaTop),
          width: 100.w,
          padding: EdgeInsets.only(
            left: 2.h,
            right: 2.h,
            top: 8.h,
            bottom: 2.h,
          ),
          child: ListView(
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
                height: 8.h,
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: font3,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      Divider(
                        height: (.5).h,
                        color: Colors.transparent,
                      ),
                      Text(
                        "Login with your phone number below.",
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: font3,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      Divider(
                        height: 5.h,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ],
              ),
              CustomPhoneNumberWidget(
                callBack: getPhNumberFromChild,
                phoneController: phoneNumberController,
              ),
              Divider(
                height: (4).h,
                color: Colors.transparent,
              ),
              Hero(
                tag: 'button_1',
                child: CustomLongButton(
                  fontSize: 12.sp,
                  height: (13 / 2).h,
                  borderColor: Theme.of(context).colorScheme.secondary,
                  radius: 5.sp,
                  width: 100.w,
                  buttonColor: Theme.of(context).colorScheme.secondary,
                  buttonTitle: "Send OTP",
                  onPressed: () {
                    print(number.number);
                    if (number.number.isNotEmpty &&
                        number.dial_code.isNotEmpty &&
                        number.number.length == 10) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OTPVerificationPage(
                            number: number,
                          ),
                        ),
                      );
                    }
                  },
                  isLoading: false,
                  textColor: Theme.of(context).colorScheme.tertiary,
                ),
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
                    "Don't have an account?",
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
                            builder: (context) => const RegisterPage(),
                          ));
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        decorationThickness: 2,
                        fontSize: 12.sp,
                        fontFamily: font3,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary,
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
      ),
    );
  }
}
