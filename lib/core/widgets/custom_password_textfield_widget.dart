import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';

// Custom text field widget for password input
class CustomPasswordFieldWidget extends StatefulWidget {
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool status;
  final TextEditingController
      textEditingController; // Controller for the text field
  final String hintText; // Hint text for the text field
  final String label; // Label for the text field
  final bool enable; // Flag indicating whether the text field is enabled
  final bool
      obscureText; // Flag indicating whether the text should be obscured (e.g., for passwords)
  final Function()
      onPressed; // Callback function when the visibility icon is pressed

  // Constructor for CustomPasswordFieldWidget
  const CustomPasswordFieldWidget({
    super.key,
    required this.hintText,
    required this.textEditingController,
    required this.label,
    required this.enable,
    required this.obscureText,
    required this.onPressed,
    required this.status,
    required this.validator,
    this.onChanged,
    this.onSaved,
  });

  @override
  State<CustomPasswordFieldWidget> createState() =>
      _TextFieldWidgetStatePassword();
}

// State class for CustomPasswordFieldWidget
class _TextFieldWidgetStatePassword extends State<CustomPasswordFieldWidget> {
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
          cursorErrorColor: Theme.of(context).colorScheme.tertiary,
          validator: widget.validator,
          style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary, fontSize: 12.sp),
          decoration: InputDecoration(
            contentPadding: EdgeInsetsDirectional.symmetric(
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
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(.3),
              fontSize: 11.sp,
              fontFamily: font3,
              fontWeight: FontWeight.w400,
            ),
            suffixIconColor: Colors.grey,
            suffixIcon: IconButton(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(.3),
              splashRadius: 1,
              onPressed: widget.onPressed,
              icon: Icon(
                widget.obscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          textCapitalization: TextCapitalization.values.first,
          controller: widget.textEditingController,
          focusNode: myFocusNode,
          onTapOutside: (event) => myFocusNode.unfocus(),
          enabled: widget.enable,
          obscureText: widget.obscureText,
          cursorColor: Theme.of(context).colorScheme.tertiary,
        ),
      ],
    );
  }
}
