String convertDataToString(DateTime date) {
  String year = date.year.toString();
  String month = date.month.toString();
  String day = date.day.toString();

  if (month.length == 1) {
    month = '0$month';
  }

  if (day.length == 1) {
    day = '0$day';
  }

  String finalString = year + month + day;

  return finalString;
}

String convertDataToStringDots(DateTime date) {
  String year = date.year.toString();
  String month = date.month.toString();
  String day = date.day.toString();

  if (month.length == 1) {
    month = '0$month';
  }

  if (day.length == 1) {
    day = '0$day';
  }

  String finalString = '$day.$month.$year';

  return finalString;
}
