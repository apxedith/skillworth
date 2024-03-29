import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';

class ProjectMediaContainerWidget extends StatefulWidget {
  const ProjectMediaContainerWidget({super.key});

  @override
  State<ProjectMediaContainerWidget> createState() =>
      _ProjectMediaContainerWidgetState();
}

class _ProjectMediaContainerWidgetState
    extends State<ProjectMediaContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48.h,
          width: 100.w,
          color: Colors.transparent,
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(reference)),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(reference)),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(reference)),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(reference),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 2.h,
          color: Colors.transparent,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomLongButton(
              height: 6.h,
              buttonColor: Theme.of(context).colorScheme.primary,
              buttonTitle: "See all +27 Photos",
              onPressed: () {},
              isLoading: false,
              textColor: Theme.of(context).colorScheme.secondary,
              width: 40.w,
              radius: 7.sp,
              borderColor: Theme.of(context).colorScheme.secondary,
              fontSize: 10.sp,
            ),
          ],
        ),
      ],
    );
  }
}
