import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth_mobile/core/utils/utils.dart';
import 'package:skillworth_mobile/features/project_management_page/presentation/widget/project_detail_bottom_widget.dart';
import 'package:skillworth_mobile/features/skillset_page/presentation/widget/skill_detail_bottom_widget.dart';
import 'package:skillworth_mobile/features/skillset_page/presentation/widget/skill_detail_task_widget.dart';
import 'package:skillworth_mobile/features/skillset_page/presentation/widget/skill_detail_top_widget.dart';
import 'package:skillworth_mobile/features/skillset_page/presentation/widget/skill_details_graph_widget.dart';
import 'package:skillworth_mobile/features/skillset_page/presentation/widget/skill_details_notes_widget.dart';

class YourSkillDetailsPageWidget extends StatefulWidget {
  const YourSkillDetailsPageWidget({super.key});

  @override
  State<YourSkillDetailsPageWidget> createState() =>
      _YourSkillDetailsPageWidgetState();
}

class _YourSkillDetailsPageWidgetState
    extends State<YourSkillDetailsPageWidget> {
  @override
  Widget build(BuildContext context) {
    // double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    double safeAreaLeft = Utils().getSafeAreaLeft(context: context);
    double safeAreaRight = Utils().getSafeAreaRight(context: context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: 100.h - (safeAreaBottom),
        width: 100.w - (safeAreaRight + safeAreaLeft),
        color: Theme.of(context).colorScheme.primary,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SkillDetailTopWidget(),
              Divider(
                height: 2.h,
                color: Colors.transparent,
              ),
              SkillDetailsGraphWidget(),
              Divider(
                height: 2.h,
                color: Colors.transparent,
              ),
              SkillsDetailNotesWidget(),
              Divider(
                height: 2.h,
                color: Colors.transparent,
              ),
              SkillDetailTaskWidget(),
              SkillDetailBottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
