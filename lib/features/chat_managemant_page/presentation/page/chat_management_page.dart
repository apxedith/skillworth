import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/chat_page_widget.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/project_chat_page_widget.dart';

class ChatManagementPage extends StatefulWidget {
  const ChatManagementPage({super.key});

  @override
  State<ChatManagementPage> createState() => _ChatManagementPageState();
}

class _ChatManagementPageState extends State<ChatManagementPage> {
  List<Widget> pages() {
    return [
      const ChatPageWidget(),
      const ProjectProjectChatPageWidget(),
    ];
  }

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
      child: DefaultTabController(
        animationDuration: const Duration(milliseconds: 500),
        length: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Divider(
              height: 10.h,
              color: Colors.transparent,
            ),
            Container(
              padding: EdgeInsets.all(1.h),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              height: 7.h,
              width: 100.w,
              child: TabBar(
                padding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                isScrollable: false,
                indicatorColor: Theme.of(context).colorScheme.secondary,
                labelColor: Theme.of(context).colorScheme.secondary,
                unselectedLabelColor: Theme.of(context).colorScheme.tertiary,
                tabs: [
                  Tab(
                    child: Center(
                      child: Text(
                        "Chat",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: (11).sp,
                          fontFamily: font5,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text(
                        "Project",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: (11).sp,
                          fontFamily: font5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: Center(
                child: Container(
                  height: 80.h,
                  width: 100.w,
                  color: Colors.transparent,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: pages(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
