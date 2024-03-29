import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth/core/constants/constants.dart';
import 'package:skillworth/core/utils/utils.dart';
import 'package:skillworth/core/widgets/custom_long_button.dart';
import 'package:skillworth/features/register_page/data/model/add_skill_model.dart';
import 'package:skillworth/features/register_page/presentation/bloc/bloc/register_bloc.dart';

class AddSkillsPage extends StatefulWidget {
  const AddSkillsPage({super.key});

  @override
  State<AddSkillsPage> createState() => _AddSkillsPageState();
}

class _AddSkillsPageState extends State<AddSkillsPage> {
  Widget getChild(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.sp)),
      width: 15.h,
      height: 15.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            MdiIcons.account,
            size: 30.sp,
            color: Theme.of(context).colorScheme.tertiary,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 10.sp,
                fontFamily: font3,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          )
        ],
      ),
    );
  }

  List<String> skills = [
    "Skill 1",
    "Skill 2",
    "Skill 3",
    "Skill 4",
  ];
  List<String> subSkills = [
    "Sub Skill 1",
    "Sub Skill 2",
    "Sub Skill 3",
    "Sub Skill 4",
  ];
  List<String> selectedSubSkill = [];
  PageController controller = PageController(initialPage: 0);
  int index = 0;
  RegisterBloc bloc = RegisterBloc();
  @override
  Widget build(BuildContext context) {
    double safeAreaTop = Utils().getSafeAreaTop(context: context);
    double safeAreaBottom = Utils().getSafeAreaBottom(context: context);
    return BlocConsumer<RegisterBloc, RegisterState>(
      bloc: bloc,
      listener: (context, state) {
        print(state);
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Container(
                height: 100.h - (safeAreaBottom + safeAreaTop),
                width: 100.w,
                padding: EdgeInsets.only(
                  top: 8.h,
                  bottom: 2.h,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          appName,
                          style: TextStyle(
                            letterSpacing: 2.sp,
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.secondary,
                            fontFamily: font1,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 3.h,
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      height: 80.h,
                      width: 100.w,
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 6.h,
                            width: 100.w,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Add Your Skills",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: font3,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            color: Colors.transparent,
                          ),
                          Text(
                            "Let your audience know your technical and soft skills expertise.",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: font3,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                          Divider(
                            height: 2.h,
                            color: Colors.transparent,
                          ),
                          Container(
                            height: 50.h,
                            width: 100.w,
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 5.h,
                                  width: 100.w,
                                  color: Colors.transparent,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        focusColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller.previousPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.easeInOut);
                                        },
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                      Text(
                                        skills[index],
                                        style: TextStyle(
                                          fontFamily: font1,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      InkWell(
                                        focusColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.easeInOut);
                                        },
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: 100.w,
                                  color: Colors.transparent,
                                  child: PageView(
                                    onPageChanged: (value) {
                                      setState(() {
                                        index = value;
                                      });
                                    },
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    controller: controller,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(1.h),
                                        color: Colors.transparent,
                                        height: 43.h,
                                        width: 100.w,
                                        child: MultiSelectContainer(
                                          wrapSettings: const WrapSettings(
                                            runAlignment: WrapAlignment.center,
                                            alignment: WrapAlignment.center,
                                            spacing: 20,
                                            runSpacing: 20,
                                          ),
                                          itemsPadding: EdgeInsets.all(2.sp),
                                          itemsDecoration:
                                              MultiSelectDecorations(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.sp),
                                              border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary,
                                              ),
                                              color: Colors.transparent,
                                            ),
                                            selectedDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.sp),
                                              border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary,
                                              ),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                          ),
                                          items: List.generate(
                                            subSkills.length,
                                            (index) => MultiSelectCard(
                                              value: 'Dart',
                                              child: getChild(
                                                Icons.abc,
                                                subSkills[index],
                                              ),
                                            ),
                                          ),
                                          //
                                          onChange:
                                              (allSelectedItems, selectedItem) {
                                            setState(() {
                                              selectedSubSkill =
                                                  allSelectedItems;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 2.h,
                            color: Colors.transparent,
                          ),
                          CustomLongButton(
                            fontSize: 12.sp,
                            height: (13 / 2).h,
                            borderColor:
                                Theme.of(context).colorScheme.secondary,
                            radius: 5.sp,
                            width: 100.w,
                            buttonColor:
                                Theme.of(context).colorScheme.secondary,
                            buttonTitle: "Continue",
                            onPressed: () {
                              print(skills[index]);
                              print(selectedSubSkill);
                              final addSkillModel = AddSkillModel(
                                userId: "6603cada8f9978e776ead485",
                                primary_skill: skills[index],
                                sub_skills: selectedSubSkill,
                              );
                              bloc.add(AddSkillPageEvent(
                                  addSkillModel: addSkillModel));
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => const AddSkillsPage(),
                              //     ));
                            },
                            isLoading: false,
                            textColor: Theme.of(context).colorScheme.tertiary,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AddSkillsPage(),
                                        ));
                                  },
                                  child: Text(
                                    "SKIP",
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      fontFamily: font2,
                                      letterSpacing: 1.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
