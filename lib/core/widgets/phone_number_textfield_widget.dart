import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PhoneNumberTextfieldWidget extends StatefulWidget {
  final TextEditingController controller;
  const PhoneNumberTextfieldWidget({
    super.key,
    required this.controller,
  });

  @override
  State<PhoneNumberTextfieldWidget> createState() =>
      _PhoneNumberTextfieldWidgetState();
}

class _PhoneNumberTextfieldWidgetState
    extends State<PhoneNumberTextfieldWidget> {
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
    return TextField(
      style: TextStyle(
        color: Theme.of(context).colorScheme.tertiary,
        fontSize: 12.sp,
      ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary.withOpacity(.5),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(.3)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(.5)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.sp),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(.3)),
        ),
        errorText: "o",
        errorStyle: const TextStyle(
          height: 0,
          fontSize: .001,
          color: Colors.transparent,
        ),
        alignLabelWithHint: true,
        hintText: "Enter your phone number",
        hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.tertiary.withOpacity(.3),
            fontSize: 12.sp),
      ),
      controller: widget.controller,
      focusNode: myFocusNode,
      onTapOutside: (event) => myFocusNode.unfocus(),
      enabled: true,
      obscureText: false,
      cursorColor: Theme.of(context).colorScheme.tertiary,
      cursorErrorColor: Theme.of(context).colorScheme.tertiary,
      textCapitalization: TextCapitalization.words,
    );
  }
}
