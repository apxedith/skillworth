import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:sizer/sizer.dart';
import 'package:skillworth_mobile/core/constants/constants.dart';

class SkillDetailsGraphWidget extends StatefulWidget {
  const SkillDetailsGraphWidget({super.key});

  @override
  State<SkillDetailsGraphWidget> createState() =>
      _SkillDetailsGraphWidgetState();
}

class _SkillDetailsGraphWidgetState extends State<SkillDetailsGraphWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33.h,
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skill Graph",
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: font1,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.h),
            height: 30.h,
            width: 100.w,
            color: Colors.transparent,
            child: AspectRatio(
              aspectRatio: 1.5,
              child: LineChart(
                LineChartData(
                  minX: 1,
                  maxX: 8,
                  minY: 0,
                  maxY: 5,
                  gridData: FlGridData(
                    show: true,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        strokeWidth: .5,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(.5),
                        dashArray: [3],
                      );
                    },
                    drawVerticalLine: false,
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border(
                        bottom: BorderSide(
                          width: .5,
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(.3),
                        ),
                        top: BorderSide(
                          width: .5,
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(.3),
                        )),
                  ),
                  titlesData: LineTiles().getData(),
                  lineBarsData: [
                    LineChartBarData(
                      dotData: FlDotData(
                        checkToShowDot: (spot, barData) {
                          if (spot.x == 6) {
                            return true;
                          } else {
                            return false;
                          }
                        },
                        show: true,
                      ),
                      spots: [
                        FlSpot(1, 0),
                        FlSpot(2, 1),
                        FlSpot(3, 4),
                        FlSpot(4, 2),
                        FlSpot(5, 3),
                        FlSpot(6, 5),
                      ],
                      isCurved: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LineTiles {
  getData() => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 1:
                  return Text(
                    "Jan",
                    style: TextStyle(
                      fontFamily: font1,
                      fontSize: 9.sp,
                      color: Colors.white,
                    ),
                  );
                case 2:
                  return Text(
                    "Feb",
                    style: TextStyle(
                      fontFamily: font1,
                      fontSize: 9.sp,
                      color: Colors.white,
                    ),
                  );
                case 3:
                  return Text(
                    "Mar",
                    style: TextStyle(
                      fontFamily: font1,
                      fontSize: 9.sp,
                      color: Colors.white,
                    ),
                  );
                case 4:
                  return Text(
                    "Apr",
                    style: TextStyle(
                      fontFamily: font1,
                      fontSize: 9.sp,
                      color: Colors.white,
                    ),
                  );
                case 5:
                  return Text(
                    "May",
                    style: TextStyle(
                      fontFamily: font1,
                      fontSize: 9.sp,
                      color: Colors.white,
                    ),
                  );
                case 6:
                  return Text(
                    "Jun",
                    style: TextStyle(
                      fontFamily: font1,
                      fontSize: 9.sp,
                      color: Colors.white,
                    ),
                  );
                case 7:
                  return Text(
                    "Jul",
                    style: TextStyle(
                      fontFamily: font1,
                      fontSize: 9.sp,
                      color: Colors.white,
                    ),
                  );
                case 8:
                  return Text(
                    "Aug",
                    style: TextStyle(
                      fontFamily: font1,
                      fontSize: 9.sp,
                      color: Colors.white,
                    ),
                  );
                default:
                  return Text("");
              }
            },
            showTitles: true,
          ),
        ),
        leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );
}
