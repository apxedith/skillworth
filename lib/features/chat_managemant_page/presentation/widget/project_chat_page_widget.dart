import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/messages_widget.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/search_field_widget.dart';

class ProjectProjectChatPageWidget extends StatefulWidget {
  const ProjectProjectChatPageWidget({super.key});

  @override
  State<ProjectProjectChatPageWidget> createState() =>
      _ProjectProjectChatPageWidgetState();
}

class _ProjectProjectChatPageWidgetState
    extends State<ProjectProjectChatPageWidget> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 100.w,
      padding: EdgeInsets.all(2.h),
      child: Column(
        children: [
          SearchFieldWidget(
            controller: controller,
            enable: false,
          ),
          Divider(
            height: 3.h,
            color: Colors.transparent,
          ),
          const MessagesWidget(
            count: 2,
          ),
        ],
      ),
    );
  }
}
