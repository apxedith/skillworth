import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class CustomDropDownTextFieldWidget extends StatefulWidget {
  final Color fillColor;
  final bool status;
  final SingleValueDropDownController controller;
  final String hintText;
  final String label;
  final bool enable;

  const CustomDropDownTextFieldWidget({
    super.key,
    required this.fillColor,
    required this.status,
    required this.hintText,
    required this.label,
    required this.enable,
    required this.controller,
  });

  @override
  State<CustomDropDownTextFieldWidget> createState() =>
      _CustomDropDownTextFieldWidgetState();
}

class _CustomDropDownTextFieldWidgetState
    extends State<CustomDropDownTextFieldWidget> {
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 12.sp,
            fontFamily: font3,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        Divider(
          height: 1.h,
          color: Colors.transparent,
        ),
        DropDownTextField(
          clearIconProperty: IconProperty(
            color: Theme.of(context).colorScheme.tertiary.withOpacity(.4),
          ),
          controller: widget.controller,
          textFieldDecoration: InputDecoration(
            contentPadding: EdgeInsetsDirectional.symmetric(
              horizontal: 20.sp,
              vertical: 10.sp,
            ),
            filled: true,
            fillColor: widget.fillColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.sp),
              borderSide: BorderSide(
                color: (widget.status) ? widget.fillColor : Colors.red,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.sp),
              borderSide: BorderSide(
                color: (widget.status) ? widget.fillColor : Colors.red,
                width: 1,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.sp),
              borderSide: BorderSide(
                color: (widget.status) ? widget.fillColor : Colors.red,
                width: 1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.sp),
              borderSide: BorderSide(
                color: (widget.status) ? widget.fillColor : Colors.red,
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
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(.3),
              fontSize: 11.sp,
              fontFamily: font3,
              fontWeight: FontWeight.w400,
            ),
          ),
          dropDownItemCount: occupationCount,
          dropDownList: occupationList,
          onChanged: (val) {},
          dropDownIconProperty: IconProperty(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
