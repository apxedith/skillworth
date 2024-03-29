import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/features/home_page/notification_management.dart/presentation/widget/notification_view_widget.dart';

class HomePageNotificationContainerWidget extends StatefulWidget {
  const HomePageNotificationContainerWidget({super.key});

  @override
  State<HomePageNotificationContainerWidget> createState() =>
      _HomePageNotificationContainerWidgetState();
}

class _HomePageNotificationContainerWidgetState
    extends State<HomePageNotificationContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      color: Colors.transparent,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const NotificationViewWidget(
            profileUrl: defalut,
            title: "Alisha Mom",
            content: "How are you",
          );
        },
        itemCount: 3,
      ),
    );
  }
}
