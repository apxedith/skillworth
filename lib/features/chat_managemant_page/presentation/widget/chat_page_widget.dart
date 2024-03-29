import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/active_people_widget.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/messages_widget.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/search_field_widget.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/search_page_widget.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({super.key});

  @override
  State<ChatPageWidget> createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 100.w,
      padding: EdgeInsets.all(2.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPageWidget(),
                  ));
            },
            child: SearchFieldWidget(
              controller: controller,
              enable: false,
            ),
          ),
          Divider(
            height: 3.h,
            color: Colors.transparent,
          ),
          ActivePeopleWidget(),
          Divider(
            height: 2.h,
            color: Colors.transparent,
          ),
          MessagesWidget(
            count: 7,
          ),
        ],
      ),
    );
  }
}
