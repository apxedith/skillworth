import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';

class SocialSignInButton extends StatefulWidget {
  final Function() onPressed;
  final Color textColor;
  final Color buttonColor;
  final String buttonTitle;
  final bool isLoading;
  final double width;
  final double radius;
  final Color borderColor;
  final String logo;
  const SocialSignInButton({
    super.key,
    required this.buttonColor,
    required this.buttonTitle,
    required this.onPressed,
    required this.isLoading,
    required this.textColor,
    required this.width,
    required this.radius,
    required this.borderColor,
    required this.logo,
  });

  @override
  State<SocialSignInButton> createState() => _SocialSignInButtonState();
}

class _SocialSignInButtonState extends State<SocialSignInButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius),
        border: Border.all(
          color: widget.borderColor,
          width: .5,
        ),
      ),
      height: (15 / 2).h,
      width: widget.width,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: widget.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius),
          ),
        ),
        child: widget.isLoading
            ? CircularProgressIndicator(
                color: Theme.of(context).colorScheme.tertiary,
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 18.sp,
                    width: 18.sp,
                    child: Center(
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: SvgPicture.asset(
                          widget.logo,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.sp,
                  ),
                  Text(
                    widget.buttonTitle,
                    style: TextStyle(
                      fontFamily: font4,
                      fontWeight: FontWeight.w700,
                      color: widget.textColor,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
