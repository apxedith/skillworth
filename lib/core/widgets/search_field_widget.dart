import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

class SearchFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final bool autoFocus;
  final bool enabled;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  const SearchFieldWidget({
    super.key,
    required this.enabled,
    required this.controller,
    required this.onChanged,
    required this.onSubmitted,
    required this.autoFocus,
  });

  @override
  State<SearchFieldWidget> createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: TextField(
        autofocus: widget.autoFocus,
        onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        keyboardType: TextInputType.text,
        cursorColor: Theme.of(context).colorScheme.tertiary,
        controller: widget.controller,
        enabled: widget.enabled,
        focusNode: myFocusNode,
        onTapOutside: (event) => myFocusNode.unfocus(),
        style: const TextStyle(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 15.sp,
          ),
          hintText: "Type Here....",
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.tertiary.withOpacity(.6),
            fontSize: 12.sp,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.onSecondaryContainer,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.sp),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              width: 1,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.sp),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.sp),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.sp),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              width: 1,
            ),
          ),
          suffixIcon: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: CircleAvatar(
              radius: 15.sp,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Center(
                child: Icon(
                  size: 14.sp,
                  MdiIcons.arrowRight,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
