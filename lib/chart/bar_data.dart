import 'package:health_monitor/chart/bar.dart';

class BarData {
  final double monData;
  final double tueData;
  final double wedData;
  final double thurData;
  final double friData;
  final double satData;
  final double sunData;

  BarData({
    required this.monData,
    required this.tueData,
    required this.wedData,
    required this.thurData,
    required this.friData,
    required this.satData,
    required this.sunData,
  });

  List<Bar> barData = [];

  void initialBarData() {
    barData = [
      Bar(x: 0, y: monData),
      Bar(x: 1, y: tueData),
      Bar(x: 2, y: wedData),
      Bar(x: 3, y: thurData),
      Bar(x: 4, y: friData),
      Bar(x: 5, y: satData),
      Bar(x: 6, y: sunData),
    ];
  }
}
