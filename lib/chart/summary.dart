import 'package:flutter/material.dart';
import 'package:health_monitor/chart/chart.dart';
import 'package:health_monitor/data/parameter_data.dart';
import 'package:provider/provider.dart';

class Summary extends StatelessWidget {
  final DateTime startOfWeek;
  const Summary({super.key, required this.startOfWeek});

  @override
  Widget build(BuildContext context) {
    return Consumer<ParameterData>(
      builder: (context, value, child) => SizedBox(
        height: 200,
        child: MyChart(
            maxY: 200,
            mon: 123,
            tue: 120,
            wed: 130,
            thur: 150,
            fri: 130,
            sat: 126,
            sun: 110),
      ),
    );
  }
}
