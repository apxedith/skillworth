import 'package:floating_bottom_navigation_bar/src/floating_navbar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

typedef ItemBuilder = Widget Function(
    BuildContext context, FloatingNavbarItem items);

class CustomFloatingNavbar extends StatefulWidget {
  final List<FloatingNavbarItem>? items;
  final int? currentIndex;
  final void Function(int val)? onTap;
  final Color? selectedBackgroundColor;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final Color? backgroundColor;
  final double? fontSize;
  final double? iconSize;
  final double? itemBorderRadius;
  final double? borderRadius;
  final ItemBuilder? itemBuilder;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double width;
  final double? elevation;

  CustomFloatingNavbar({
    super.key,
    @required this.items,
    @required this.currentIndex,
    @required this.onTap,
    ItemBuilder? itemBuilder,
    this.backgroundColor = Colors.black,
    this.selectedBackgroundColor = Colors.white,
    this.selectedItemColor = Colors.black,
    this.iconSize = 24.0,
    this.fontSize = 11.0,
    this.borderRadius = 8,
    this.itemBorderRadius = 8,
    this.unselectedItemColor = Colors.white,
    this.margin = const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    this.padding = const EdgeInsets.only(bottom: 8, top: 8),
    this.width = double.infinity,
    this.elevation = 0.0,
  })  : assert(items!.length > 1),
        assert(items!.length <= 5),
        assert(currentIndex! <= items!.length),
        assert(width > 50),
        this.itemBuilder = itemBuilder ??
            _defaultItemBuilder(
              unselectedItemColor: unselectedItemColor,
              selectedItemColor: selectedItemColor,
              borderRadius: borderRadius,
              fontSize: fontSize,
              width: width,
              backgroundColor: backgroundColor,
              currentIndex: currentIndex,
              iconSize: iconSize,
              itemBorderRadius: itemBorderRadius,
              items: items,
              onTap: onTap,
              selectedBackgroundColor: selectedBackgroundColor,
            );

  @override
  _FloatingNavbarState createState() => _FloatingNavbarState();
}

class _FloatingNavbarState extends State<CustomFloatingNavbar> {
  List<FloatingNavbarItem> get items => widget.items!;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      height: 13.h,
      width: 100.w,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: (6).h,
              width: 85.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.borderRadius!),
                color: widget.backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(0, 0, 0, 0).withOpacity(.15),
                    blurRadius: 0,
                    spreadRadius: 0,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 13.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.borderRadius!),
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: items.map((f) {
                    return widget.itemBuilder!(context, f);
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

ItemBuilder _defaultItemBuilder({
  Function(int val)? onTap,
  List<FloatingNavbarItem>? items,
  int? currentIndex,
  Color? selectedBackgroundColor,
  Color? selectedItemColor,
  Color? unselectedItemColor,
  Color? backgroundColor,
  double width = double.infinity,
  double? fontSize,
  double? iconSize,
  double? itemBorderRadius,
  double? borderRadius,
}) {
  return (BuildContext context, FloatingNavbarItem item) => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == items!.indexOf(item)
                    ? selectedBackgroundColor
                    : Colors.transparent,
              ),
              child: GestureDetector(
                onTap: () {
                  onTap!(items.indexOf(item));
                },
                child: Container(
                  width: width.isFinite
                      ? (width / items.length - 8)
                      : MediaQuery.of(context).size.width / items.length - 24,
                  padding: EdgeInsets.symmetric(
                      horizontal: 4, vertical: item.title != null ? 4 : 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      item.customWidget == null
                          ? Icon(
                              item.icon,
                              color: currentIndex == items.indexOf(item)
                                  ? selectedItemColor
                                  : unselectedItemColor,
                              size: iconSize,
                            )
                          : item.customWidget!,
                      if (item.title != null)
                        Text(
                          '${item.title}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: currentIndex == items.indexOf(item)
                                ? selectedItemColor
                                : unselectedItemColor,
                            fontSize: fontSize,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
