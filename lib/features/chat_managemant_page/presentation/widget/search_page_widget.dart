import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/circular_avatar_icon_widget.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/search_field_widget.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/search_recent_container_widget.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/widget/search_result_container_widget.dart';

class SearchPageWidget extends StatefulWidget {
  const SearchPageWidget({super.key});

  @override
  State<SearchPageWidget> createState() => _SearchPageWidgetState();
}

class _SearchPageWidgetState extends State<SearchPageWidget> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    double safeAreaLeft = Utils().getSafeAreaLeft(context: context);
    double safeAreaRight = Utils().getSafeAreaRight(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(2.h),
          height: 100.h - (safeAreaBottom + safeAreaTop),
          width: 100.w - (safeAreaRight + safeAreaLeft),
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            children: [
              Container(
                height: 10.h,
                width: 100.w,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: CircularAvatarIconWidget(
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                        iconColor: Theme.of(context).colorScheme.tertiary,
                        iconSize: 18.sp,
                        radius: 15.sp,
                        iconData: MdiIcons.arrowLeft,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 4.h,
                color: Colors.transparent,
              ),
              SearchFieldWidget(
                controller: controller,
                enable: true,
              ),
              Divider(
                height: 4.h,
                color: Colors.transparent,
              ),
              SearchRecentContainerWidget(),
              Divider(
                height: 2.h,
                color: Colors.transparent,
              ),
              SearchResultContainerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
