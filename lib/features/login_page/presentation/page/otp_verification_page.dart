import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:intl_phone_number_field/intl_phone_number_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';

class OTPVerificationPage extends StatefulWidget {
  final IntPhoneNumber number;
  const OTPVerificationPage({
    super.key,
    required this.number,
  });

  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                height: 10.h,
                color: Colors.transparent,
              ),
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
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "OTP Verification",
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
                height: 2.h,
                color: Colors.transparent,
              ),
              Text(
                "We have sent an OTP to your phone number ${widget.number.dial_code} - ${widget.number.number}",
                style: TextStyle(
                  fontSize: 11.sp,
                  fontFamily: font3,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              SizedBox(
                height: 20.h,
                width: 100.w,
                child: Center(
                  child: OtpTextField(
                    fieldWidth: 40.sp,
                    numberOfFields: 5,
                    borderColor: filledColor,
                    enabledBorderColor: filledColor,
                    focusedBorderColor: filledColor,
                    cursorColor: Theme.of(context).colorScheme.tertiary,
                    filled: true,
                    fillColor: filledColor,
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {},
                  ),
                ),
              ),
              CustomLongButton(
                fontSize: 12.sp,
                height: (13 / 2).h,
                borderColor: Theme.of(context).colorScheme.secondary,
                radius: 5.sp,
                width: 100.w,
                buttonColor: Theme.of(context).colorScheme.secondary,
                buttonTitle: "Verify",
                onPressed: () {},
                isLoading: false,
                textColor: Theme.of(context).colorScheme.tertiary,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive an OTP?",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: font3,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Tap to send again.",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: font3,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
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
