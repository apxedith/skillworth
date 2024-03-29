import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/features/project_management_page/presentation/widget/documents_container_widget.dart';
import 'package:skillworth/features/project_management_page/presentation/widget/media_container_widget.dart';

class ProjectDetailsBottomWidget extends StatefulWidget {
  const ProjectDetailsBottomWidget({super.key});

  @override
  State<ProjectDetailsBottomWidget> createState() =>
      _ProjectDetailsBottomWidgetState();
}

class _ProjectDetailsBottomWidgetState
    extends State<ProjectDetailsBottomWidget> {
  List<Widget> pages() {
    return const [
      ProjectMediaContainerWidget(),
      ProjectDocumentsContainerWidget(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.h),
      height: 70.h,
      width: 100.w,
      child: DefaultTabController(
        animationDuration: const Duration(milliseconds: 500),
        length: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(1.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.sp),
              ),
              height: 7.h,
              width: 100.w,
              child: TabBar(
                unselectedLabelColor: Colors.amber,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                isScrollable: false,
                indicatorColor: Theme.of(context).colorScheme.secondary,
                tabs: [
                  Tab(
                    child: Center(
                      child: Text(
                        "Media",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
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
                        "Documents",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
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
                  height: 58.h,
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
