import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/common_appbar_widget.dart';
import 'package:skillworth/features/skillset_page/presentation/widget/your_skill_container_widget.dart';
import 'package:skillworth/features/skillset_page/presentation/widget/your_task_container_widget.dart';

class SkillSetManagementPage extends StatefulWidget {
  const SkillSetManagementPage({super.key});

  @override
  State<SkillSetManagementPage> createState() => _SkillSetManagementPageState();
}

class _SkillSetManagementPageState extends State<SkillSetManagementPage> {
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
      child: Column(
        children: [
          Divider(
            height: 4.h,
            color: Colors.transparent,
          ),
          const CommonAppBarWidget(
            title: "Skillset",
          ),
          Divider(
            height: 1.h,
            color: Colors.transparent,
          ),
          Container(
            height: 80.h,
            width: 100.w,
            color: Colors.transparent,
            child: ListView(
              children: [
                YourSkillsContainer(),
                // Divider(
                //   height: .5.h,
                //   color: Colors.transparent,
                // ),
                YourTaskContainerWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
