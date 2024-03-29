import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/widgets/search_field_widget.dart';

class HomePageChatBotWidget extends StatelessWidget {
  const HomePageChatBotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Container(
        height: 75.w,
        width: 100.w,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.all(Radius.circular(16.sp)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              height: 30.w,
              width: 30.w,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: SvgPicture.asset(chatbotIcon),
              ),
            ),
            Divider(
              height: 4.w,
              color: Colors.transparent,
            ),
            Text(
              "How can I assist you today?",
              style: TextStyle(
                fontSize: 13.sp,
                fontFamily: font3,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            Divider(
              height: 1.w,
              color: Colors.transparent,
            ),
            Text(
              " Ask us anything and let us handle the rest",
              style: TextStyle(
                fontSize: 11.sp,
                fontFamily: font3,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.tertiary.withOpacity(.5),
              ),
            ),
            Divider(
              height: 5.w,
              color: Colors.transparent,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: SearchFieldWidget(
                enabled: true,
                controller: searchController,
                onChanged: (value) {},
                onSubmitted: (value) {},
                autoFocus: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
