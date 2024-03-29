import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/features/project_management_page/presentation/widget/project_detail_bottom_widget.dart';
import 'package:skillworth/features/project_management_page/presentation/widget/project_details_top_widget.dart';

class ProjectDetailsViewWidget extends StatefulWidget {
  const ProjectDetailsViewWidget({super.key});

  @override
  State<ProjectDetailsViewWidget> createState() =>
      _ProjectDetailsViewWidgetState();
}

class _ProjectDetailsViewWidgetState extends State<ProjectDetailsViewWidget> {
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
        child: const SingleChildScrollView(
          child: Column(
            children: [
              ProjectDetailsTopWidget(),
              ProjectDetailsBottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
