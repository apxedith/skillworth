import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class CustomMultiDropdownTextFieldWidget extends StatefulWidget {
  final Color fillColor;
  final bool status;
  final String hintText;
  final String label;
  final bool enable;
  final List<DropDownValueModel> list;
  final Function(List<DropDownValueModel>) callback;

  const CustomMultiDropdownTextFieldWidget({
    super.key,
    required this.fillColor,
    required this.status,
    required this.hintText,
    required this.label,
    required this.enable,
    required this.callback,
    required this.list,
  });

  @override
  State<CustomMultiDropdownTextFieldWidget> createState() =>
      _CustomMultiDropdownTextFieldWidgetState();
}

class _CustomMultiDropdownTextFieldWidgetState
    extends State<CustomMultiDropdownTextFieldWidget> {
  MultiValueDropDownController controller = MultiValueDropDownController();

  List<DropDownValueModel> selected = [];
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();

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
            fontFamily: font1,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        Divider(
          height: 1.h,
          color: Colors.transparent,
        ),
        DropDownTextField.multiSelection(
          clearIconProperty: IconProperty(
            color: Theme.of(context).colorScheme.tertiary.withOpacity(.4),
          ),
          submitButtonColor: Colors.transparent,
          submitButtonText: "  Ok  ",
          submitButtonTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.secondary, // Text color
            fontSize: 11.sp, // Text size
            fontFamily: font2,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
          displayCompleteItem: true,
          controller: controller,
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
          dropDownItemCount: documentCount,
          dropDownList: widget.list,
          onChanged: (val) {
            setState(() {
              selected = val;
            });
            widget.callback(selected);
          },
          clearOption: false,
          dropDownIconProperty: IconProperty(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
