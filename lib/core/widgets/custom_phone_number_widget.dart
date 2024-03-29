import 'package:flutter/material.dart';
import 'package:intl_phone_number_field/intl_phone_number_field.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';

class CustomPhoneNumberWidget extends StatefulWidget {
  final TextEditingController phoneController;
  final Function(IntPhoneNumber) callBack;

  const CustomPhoneNumberWidget({
    super.key,
    required this.phoneController,
    required this.callBack,
  });

  @override
  State<CustomPhoneNumberWidget> createState() =>
      _CustomPhoneNumberWidgetState();
}

class _CustomPhoneNumberWidgetState extends State<CustomPhoneNumberWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number",
          style: TextStyle(
            fontSize: 12.sp,
            fontFamily: font1,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        Divider(
          height: 1.h,
          color: Colors.transparent,
        ),
        InternationalPhoneNumberInput(
          height: 6.h,
          controller: widget.phoneController,
          inputFormatters: const [],
          formatter: MaskedInputFormatter('##########'),
          initCountry: CountryCodeModel(
            name: "United States",
            dial_code: "+1",
            code: "US",
          ),
          betweenPadding: 10,
          onInputChanged: (phone) {
            setState(() {
              widget.callBack(phone);
            });
          },
          dialogConfig: DialogConfig(
            backgroundColor: Theme.of(context).colorScheme.primary,
            searchBoxBackgroundColor:
                Theme.of(context).colorScheme.tertiary.withOpacity(.2),
            searchBoxIconColor: Theme.of(context).colorScheme.tertiary,
            countryItemHeight: 50,
            topBarColor: Theme.of(context).colorScheme.tertiary,
            selectedItemColor:
                Theme.of(context).colorScheme.secondary.withOpacity(.5),
            selectedIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                "assets/check.png",
                width: 20,
                fit: BoxFit.fitWidth,
              ),
            ),
            textStyle: TextStyle(
              fontFamily: font3,
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
            ),
            searchBoxTextStyle: TextStyle(
              fontFamily: font3,
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
            ),
            titleStyle: TextStyle(
              fontFamily: font3,
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
            searchBoxHintStyle: TextStyle(
              fontFamily: font3,
              color: Theme.of(context).colorScheme.tertiary.withOpacity(.5),
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          countryConfig: CountryConfig(
            flagSize: 0,
            decoration: BoxDecoration(
              color: filledColor,
              border: Border.all(
                width: 2,
                color: filledColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              fontFamily: font3,
            ),
          ),
          validator: (number) {
            if (number.number.isEmpty) {
              return "The phone number is required";
            } else {
              if (number.number.length < 10) {
                print(number.number.length);
                return "Enter a valid phone number";
              }
              return null;
            }
          },
          phoneConfig: PhoneConfig(
            focusedColor:
                Theme.of(context).colorScheme.tertiary.withOpacity(.3),
            enabledColor: filledColor,
            errorColor: Colors.red,
            labelStyle: null,
            labelText: null,
            floatingLabelStyle: null,
            radius: 8,
            hintText: "Phone Number",
            borderWidth: 1,
            backgroundColor: Colors.transparent,
            decoration: null,
            popUpErrorText: true,
            autoFocus: false,
            showCursor: false,
            textInputAction: TextInputAction.done,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            errorTextMaxLength: 2,
            errorPadding: const EdgeInsets.only(top: 14),
            errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 12,
              height: 1,
            ),
            textStyle: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 11.sp,
              fontFamily: font3,
              fontWeight: FontWeight.w400,
            ),
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(.3),
              fontSize: 11.sp,
              fontFamily: font3,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
