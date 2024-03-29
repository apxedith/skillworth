import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';
import 'package:skillworth/features/get_started_page/presentation/widget/get_started_container_1.dart';
import 'package:skillworth/features/get_started_page/presentation/widget/get_started_container_2.dart';
import 'package:skillworth/features/get_started_page/presentation/widget/get_started_container_3.dart';
import 'package:skillworth/features/login_page/presentation/page/login_page.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  PageController controller = PageController(initialPage: 0);
  int pageIndex = 0;
  late Timer timer;
  List<Widget> pages = const [
    GetStartedContainer1(),
    GetStartedContainer2(),
    GetStartedContainer3(),
  ];

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      _autoChangePage();
    });
  }

  void _autoChangePage() {
    final int nextPage = (pageIndex + 1) % pages.length;
    controller.animateToPage(
      nextPage,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.transparent,
                height: 75.h,
                width: 100.w,
                child: PageView(
                  pageSnapping: true,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      pageIndex = value;
                    });
                  },
                  controller: controller,
                  children: pages,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, .7),
              child: SmoothPageIndicator(
                onDotClicked: (index) {
                  controller.jumpToPage(index);
                },
                effect: ExpandingDotsEffect(
                  activeDotColor: Theme.of(context).colorScheme.secondary,
                  dotColor: Theme.of(context).colorScheme.onPrimary,
                  dotHeight: 7.sp,
                  dotWidth: 7.sp,
                  expansionFactor: 5,
                  spacing: 12.sp,
                ),
                controller: controller,
                count: 3,
              ),
            ),
            Align(
              alignment: const Alignment(0, -.92),
              child: Container(
                  height: 10.h,
                  width: 100.w,
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      (pageIndex != 0)
                          ? InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                controller.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              child: CircleAvatar(
                                radius: 15.sp,
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .onTertiary
                                    .withOpacity(.5),
                                child: Center(
                                  child: Icon(
                                    size: 15.sp,
                                    MdiIcons.arrowLeft,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                ),
                              ),
                            )
                          : const Text(""),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                              (route) => false);
                        },
                        child: Text(
                          "SKIP",
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontFamily: font2,
                            letterSpacing: 1.sp,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Align(
              alignment: const Alignment(0, .93),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Hero(
                  tag: 'button_1',
                  child: CustomLongButton(
                    fontSize: 13.sp,
                    height: (13 / 2).h,
                    borderColor: Theme.of(context).colorScheme.secondary,
                    radius: 5.sp,
                    width: 100.w,
                    buttonColor: Theme.of(context).colorScheme.secondary,
                    buttonTitle: "Get Started",
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                          (route) => false);
                    },
                    isLoading: false,
                    textColor: Theme.of(context).colorScheme.tertiary,
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
