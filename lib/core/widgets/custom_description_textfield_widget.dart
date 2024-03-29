import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

// Custom text field widget for login input
class CustomDescriptionTextfieldWidget extends StatefulWidget {
  final Color fillColor;
  final bool status;
  final String? Function(String?)? validator;
  final TextEditingController
      textEditingController; // Controller for the text field
  final String hintText; // Hint text for the text field
  final String label; // Label for the text field
  final bool enable; // Flag indicating whether the text field is enabled

  // Constructor for TextFieldWidgetLogin
  const CustomDescriptionTextfieldWidget({
    super.key,
    required this.hintText,
    required this.textEditingController,
    required this.label,
    required this.enable,
    required this.validator,
    required this.status,
    required this.fillColor,
  });

  @override
  State<CustomDescriptionTextfieldWidget> createState() =>
      _CustomDescriptionTextfieldWidgetLogin();
}

// State class for TextFieldWidgetLogin
class _CustomDescriptionTextfieldWidgetLogin
    extends State<CustomDescriptionTextfieldWidget> {
  late FocusNode myFocusNode; // Focus node for the text field

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.label,
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
          maxLines: 4,
          validator: widget.validator,
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
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
          controller: widget.textEditingController,
          focusNode: myFocusNode,
          onTapOutside: (event) => myFocusNode.unfocus(),
          enabled: widget.enable,
          cursorColor: Theme.of(context).colorScheme.tertiary,
          cursorErrorColor: Theme.of(context).colorScheme.tertiary,
          textCapitalization: TextCapitalization.words,
        ),
      ],
    );
  }
}
