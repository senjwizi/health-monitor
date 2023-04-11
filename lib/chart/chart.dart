import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:health_monitor/chart/bar_data.dart';

class MyChart extends StatelessWidget {
  final double? maxY;
  final double mon;
  final double tue;
  final double wed;
  final double thur;
  final double fri;
  final double sat;
  final double sun;

  const MyChart({
    super.key,
    required this.maxY,
    required this.mon,
    required this.tue,
    required this.wed,
    required this.thur,
    required this.fri,
    required this.sat,
    required this.sun,
  });

  @override
  Widget build(BuildContext context) {
    BarData barData = BarData(
        monData: mon,
        tueData: tue,
        wedData: wed,
        thurData: thur,
        friData: fri,
        satData: sat,
        sunData: sun);
    barData.initialBarData();

    return BarChart(BarChartData(
      maxY: maxY,
      minY: 0,
      barGroups: barData.barData
          .map((data) => BarChartGroupData(
              x: data.x, barRods: [BarChartRodData(toY: data.y)]))
          .toList(),
    ));
  }
}
