import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth_mobile/core/constants/constants.dart';
import 'package:skillworth_mobile/features/skillset_page/presentation/widget/your_skill_details_page_widget.dart';

class YourSkillViewWidget extends StatefulWidget {
  const YourSkillViewWidget({super.key});

  @override
  State<YourSkillViewWidget> createState() => _YourSkillViewWidgetState();
}

class _YourSkillViewWidgetState extends State<YourSkillViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.h),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => YourSkillDetailsPageWidget(),
              ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
          height: 20.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            borderRadius: BorderRadius.circular(4.sp),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      height: 16.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        color: Colors.transparent,
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            reference,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 40.w,
                      height: 16.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Full-Stack",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: font1,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                          Divider(
                            color: Colors.transparent,
                            height: 1.h,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecte adipiscing elit. Lorem ipsum dolor sit amet, ",
                            style: TextStyle(
                              fontSize: 10.5.sp,
                              fontFamily: font3,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiary
                                  .withOpacity(.6),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 4.h,
                  width: 14.w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(4.sp),
                  ),
                  child: Center(
                    child: Text(
                      "100",
                      style: TextStyle(
                        fontSize: 10.5.sp,
                        fontFamily: font3,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
