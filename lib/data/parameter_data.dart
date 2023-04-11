import 'package:flutter/material.dart';
import 'package:health_monitor/helper/datetime_helper.dart';
import 'package:health_monitor/models/parameter.dart';

class ParameterData extends ChangeNotifier {
  List<Parameter> parametersList = [];

  List<Parameter> getParametersList() {
    return parametersList;
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
