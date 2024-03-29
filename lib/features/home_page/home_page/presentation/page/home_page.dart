import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth_mobile/core/utils/utils.dart';
import 'package:skillworth_mobile/features/home_page/chat_bot_management/presentation/widget/home_page_chatbot_widget.dart';
import 'package:skillworth_mobile/features/home_page/home_page/presentation/widget/home_page_appbar.dart';
import 'package:skillworth_mobile/features/home_page/notification_management.dart/presentation/widget/home_page_notification_contatiner_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    double safeAreaLeft = Utils().getSafeAreaLeft(context: context);
    double safeAreaRight = Utils().getSafeAreaRight(context: context);

    return Container(
      height: 100.h - (safeAreaBottom + safeAreaTop),
      width: 100.w - (safeAreaRight + safeAreaLeft),
      color: Theme.of(context).colorScheme.primary,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomePageAppBarWidget(),
          HomePageNotificationContainerWidget(),
          HomePageChatBotWidget(),
        ],
      ),
    );
  }
}
