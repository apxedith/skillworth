import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/features/chat_managemant_page/presentation/page/chat_management_page.dart';
import 'package:skillworth/features/create_post_page/presentation/page/create_post_page.dart';
import 'package:skillworth/features/home_page/home_page/presentation/page/home_page.dart';
import 'package:skillworth/features/project_management_page/presentation/page/project_management_page.dart';
import 'package:skillworth/features/screen_layout/presentation/widget/nav_bar.dart';
import 'package:skillworth/features/skillset_page/presentation/page/skillset_management_page.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  PageController pageController = PageController(initialPage: 0);
  int index = 0;

  final List<Widget> bottomBarPages = const [
    HomePage(),
    ProjectManagementPage(),
    CreatePostPage(),
    SkillSetManagementPage(),
    ChatManagementPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          bottomBarPages.length,
          (index) => bottomBarPages[index],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: CustomFloatingNavbar(
        iconSize: 20.sp,
        unselectedItemColor: Theme.of(context).colorScheme.onTertiaryContainer,
        selectedBackgroundColor: Theme.of(context).colorScheme.tertiary,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        borderRadius: 100,
        backgroundColor:
            Theme.of(context).colorScheme.tertiary.withOpacity(.15),
        itemBorderRadius: 100,
        padding: const EdgeInsets.all(8),
        onTap: (int val) {
          setState(() {
            index = val;
          });
          pageController.jumpToPage(index);
        },
        currentIndex: index,
        items: [
          FloatingNavbarItem(icon: Icons.home),
          FloatingNavbarItem(icon: Icons.edit_document),
          FloatingNavbarItem(icon: Icons.add_box_rounded),
          FloatingNavbarItem(icon: Icons.menu),
          FloatingNavbarItem(icon: Icons.chat),
        ],
      ),
    );
  }
}
