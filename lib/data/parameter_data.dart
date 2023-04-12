import 'package:flutter/material.dart';
import 'package:health_monitor/helper/datetime_helper.dart';
import 'package:health_monitor/models/parameter.dart';

class ParameterData extends ChangeNotifier {
  List<Parameter> parametersList = [
    Parameter(name: "Давление", value: '125', date: DateTime(2023, 04, 3)),
    Parameter(name: "Давление", value: '120', date: DateTime(2023, 04, 4)),
    Parameter(name: "Давление", value: '119', date: DateTime(2023, 04, 5)),
    Parameter(name: "Давление", value: '122', date: DateTime(2023, 04, 6)),
    Parameter(name: "Давление", value: '124', date: DateTime(2023, 04, 7)),
    Parameter(name: "Давление", value: '131', date: DateTime(2023, 04, 8)),
    Parameter(name: "Давление", value: '120', date: DateTime(2023, 04, 9)),
    Parameter(name: "Давление", value: '140', date: DateTime(2023, 04, 10)),
    Parameter(name: "Давление", value: '135', date: DateTime(2023, 04, 11)),
  ];

  List<Parameter> heartRateList = [
    Parameter(name: "Сердцебиение", value: '65', date: DateTime(2023, 04, 3)),
    Parameter(name: "Сердцебиение", value: '70', date: DateTime(2023, 04, 4)),
    Parameter(name: "Сердцебиение", value: '68', date: DateTime(2023, 04, 5)),
    Parameter(name: "Сердцебиение", value: '80', date: DateTime(2023, 04, 6)),
    Parameter(name: "Сердцебиение", value: '87', date: DateTime(2023, 04, 7)),
    Parameter(name: "Сердцебиение", value: '65', date: DateTime(2023, 04, 8)),
    Parameter(name: "Сердцебиение", value: '93', date: DateTime(2023, 04, 9)),
    Parameter(name: "Сердцебиение", value: '85', date: DateTime(2023, 04, 10)),
    Parameter(name: "Сердцебиение", value: '98', date: DateTime(2023, 04, 11)),
  ];

  List<Parameter> hemoglobinList = [
    Parameter(name: "Гемоглобин", value: '150', date: DateTime(2022, 10, 3)),
    Parameter(name: "Гемоглобин", value: '180', date: DateTime(2022, 11, 2)),
    Parameter(name: "Гемоглобин", value: '140', date: DateTime(2022, 12, 3)),
    Parameter(name: "Гемоглобин", value: '140', date: DateTime(2023, 01, 1)),
    Parameter(name: "Гемоглобин", value: '150', date: DateTime(2023, 02, 3)),
    Parameter(name: "Гемоглобин", value: '145', date: DateTime(2023, 03, 3)),
    Parameter(name: "Гемоглобин", value: '175', date: DateTime(2023, 04, 2)),
  ];

  List<Parameter> getParametersList() {
    return parametersList;
  }

  List<Parameter> getHeartRateList() {
    return heartRateList;
  }

  List<Parameter> getHemoglobinList() {
    return hemoglobinList;
  }

  DateTime startOfWeekDay() {
    DateTime? startOfWeek;

    DateTime today = DateTime.now();

    for (int i = 0; i < 7; i++) {
      if (convertToWeek(today.subtract(Duration(days: 1))) == 'ВС') {
        startOfWeek = today.subtract(Duration(days: i));
      }
    }

    return startOfWeek!;
  }

  void addNewParametet(Parameter data) {
    parametersList.add(data);

    notifyListeners();
  }

  void deleteNewParametet(Parameter data) {
    parametersList.remove(data);

    notifyListeners();
  }

  String convertToWeek(DateTime date) {
    switch (date.weekday) {
      case 1:
        return 'ПН';
      case 2:
        return 'ВТ';
      case 3:
        return 'СР';
      case 4:
        return 'ЧТ';
      case 5:
        return 'ПТ';
      case 6:
        return 'СБ';
      case 7:
        return 'ВС';
      default:
        return '';
    }
  }

  Map<String, double> calculateParameter() {
    // not used
    Map<String, double> dailySummary = {};

    for (var par in parametersList) {
      String date = convertDataToString(par.date);
      double value = double.parse(par.value);
    }

    return dailySummary;
  }
}
