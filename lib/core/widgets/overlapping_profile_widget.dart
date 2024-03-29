import 'package:flutter/material.dart';
import 'package:skillworth/core/constants/constants.dart';

Widget stackedHeads(
  double radius,
  int itemCount,
) =>
    ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Align(
          widthFactor: 0.6,
          child: CircleAvatar(
            radius: radius,
            backgroundColor: Colors.white,
            child: (index != (itemCount - 1))
                ? CircleAvatar(
                    radius: radius,
                    backgroundImage: const AssetImage(defalut),
                  )
                : CircleAvatar(
                    radius: radius,
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    child: Center(
                      child: Text(
                        "+2",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
          ),
        );
      },
    );
