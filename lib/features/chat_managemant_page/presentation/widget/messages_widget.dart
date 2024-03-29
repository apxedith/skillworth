import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth_mobile/core/constants/constants.dart';

class MessagesWidget extends StatefulWidget {
  final int count;
  const MessagesWidget({super.key, required this.count});

  @override
  State<MessagesWidget> createState() => _MessagesWidgetState();
}

class _MessagesWidgetState extends State<MessagesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51.h,
      width: 100.w,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Messages",
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: font1,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          Container(
            height: 48.h,
            width: 100.w,
            color: Colors.transparent,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: widget.count,
              itemBuilder: (context, index) {
                return Container(
                  height: 10.h,
                  width: 100.w,
                  color: Colors.transparent,
                  child: Stack(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 8.h,
                          width: 100.w,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 3.5.h,
                                    backgroundImage: const AssetImage(
                                      defalut,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Emma",
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontFamily: font1,
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                        ),
                                      ),
                                      Text(
                                        "Hi....",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: font3,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary
                                              .withOpacity(.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 8.h,
                                width: 20.w,
                                color: Colors.transparent,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "23 min",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontFamily: font1,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 10.sp,
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                            fontSize: 9.sp,
                                            fontFamily: font1,
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary
                                                .withOpacity(.8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 1,
                          width: 100.w,
                          color: Theme.of(context)
                              .colorScheme
                              .tertiary
                              .withOpacity(.5),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
