import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/config/theme/color_theme.dart';
import 'package:skillworth/core/constants/constants.dart';

class SearchFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final bool enable;
  const SearchFieldWidget(
      {super.key, required this.controller, required this.enable});

  @override
  State<SearchFieldWidget> createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
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
        fontSize: 11.sp,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          MdiIcons.magnify,
          color: Theme.of(context).colorScheme.tertiary.withOpacity(.3),
          size: 18.sp,
        ),
        suffixIcon: Icon(
          Icons.horizontal_split_sharp,
          color: Theme.of(context).colorScheme.secondary,
          size: 18.sp,
        ),
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
        hintText: "Search",
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.tertiary.withOpacity(.3),
          fontSize: 11.sp,
          fontFamily: font3,
          fontWeight: FontWeight.w400,
        ),
      ),
      controller: widget.controller,
      focusNode: myFocusNode,
      onTapOutside: (event) => myFocusNode.unfocus(),
      enabled: widget.enable,
      cursorColor: Theme.of(context).colorScheme.tertiary,
      cursorErrorColor: Theme.of(context).colorScheme.tertiary,
      textCapitalization: TextCapitalization.words,
    );
  }
}
