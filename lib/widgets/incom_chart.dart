import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomChart extends StatefulWidget {
  const IncomChart({super.key});

  @override
  State<IncomChart> createState() => _IncomChartState();
}

class _IncomChartState extends State<IncomChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            color: const Color(0xff064061),
            value: 40,
            showTitle: false,
            radius: activeIndex == 0 ? 60 : 50),
        PieChartSectionData(
            color: const Color(0xff4EB7F2),
            value: 25,
            showTitle: false,
            radius: activeIndex == 1 ? 60 : 50),
        PieChartSectionData(
            color: const Color(0xff064061),
            value: 20,
            showTitle: false,
            radius: activeIndex == 2 ? 60 : 50),
        PieChartSectionData(
            color: const Color(0xffE2DECD),
            value: 22,
            showTitle: false,
            radius: activeIndex == 3 ? 60 : 50),
      ],
    );
  }
}
