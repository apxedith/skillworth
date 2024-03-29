import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/circular_avatar_icon_widget.dart';
import 'package:skillworth/core/widgets/common_appbar_widget.dart';
import 'package:skillworth/features/project_management_page/presentation/page/project_create_new_page.dart';
import 'package:skillworth/features/project_management_page/presentation/widget/project_view_widget.dart';

class ProjectManagementPage extends StatefulWidget {
  const ProjectManagementPage({super.key});

  @override
  State<ProjectManagementPage> createState() => _ProjectManagementPageState();
}

class _ProjectManagementPageState extends State<ProjectManagementPage> {
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
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 100.h,
              width: 100.w,
              child: ListView(
                children: [
                  const CommonAppBarWidget(
                    title: "Projects",
                  ),
                  Divider(
                    height: 1.h,
                    color: Colors.transparent,
                  ),
                  Container(
                    height: 72.h,
                    width: 100.w,
                    padding: EdgeInsets.all(2.h),
                    color: Colors.transparent,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const ProjectViewWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(.9, .75),
            child: CircularAvatarIconWidget(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              iconColor: Theme.of(context).colorScheme.tertiary,
              iconSize: 25.sp,
              radius: 7.w,
              iconData: MdiIcons.plus,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProjectCreateNewPage(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
