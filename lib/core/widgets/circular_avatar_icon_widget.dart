import 'package:flutter/material.dart';

class CircularAvatarIconWidget extends StatefulWidget {
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;
  final double radius;
  final IconData iconData;
  final Function()? onTap;
  const CircularAvatarIconWidget({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.iconSize,
    required this.radius,
    required this.iconData,
    required this.onTap,
  });

  @override
  State<CircularAvatarIconWidget> createState() =>
      _CircularAvatarIconWidgetState();
}

class _CircularAvatarIconWidgetState extends State<CircularAvatarIconWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: widget.onTap,
      child: CircleAvatar(
        radius: widget.radius,
        backgroundColor: widget.backgroundColor,
        child: Center(
          child: Icon(
            size: widget.iconSize,
            widget.iconData,
            color: widget.iconColor,
          ),
        ),
      ),
    );
  }
}
