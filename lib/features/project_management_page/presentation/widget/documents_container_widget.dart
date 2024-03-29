import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProjectDocumentsContainerWidget extends StatefulWidget {
  const ProjectDocumentsContainerWidget({super.key});

  @override
  State<ProjectDocumentsContainerWidget> createState() =>
      _ProjectDocumentsContainerWidgetState();
}

class _ProjectDocumentsContainerWidgetState
    extends State<ProjectDocumentsContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      width: 100.w,
      color: Colors.transparent,
    );
  }
}
