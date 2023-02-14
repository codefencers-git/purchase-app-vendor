import 'dart:developer';

import 'package:intl/intl.dart';
//
// String displayTimeAndDateTimestamp(int time, String format) {
//   DateTime date = DateTime.fromMillisecondsSinceEpoch(time);
//   String result = '';
//   final DateFormat formatter = DateFormat(format);
//   result = formatter.format(date);
//   return result;
// }

int dateFormat(int time, String format) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(time);
  String result = '';
  final DateFormat formatter = DateFormat(format);
  result = formatter.format(date);
  DateTime parseDate = DateFormat(format).parse(result);
  return parseDate.millisecondsSinceEpoch;
}

int dateInMillisecondsSinceEpoch(DateTime date, String format) {
  String result = '';
  final DateFormat formatter = DateFormat(format);
  result = formatter.format(date);
  DateTime parseDate = DateFormat(format).parse(result);
  log("parseDate $parseDate");
  return parseDate.millisecondsSinceEpoch;
}

String displayDayAndDateTimestamp(int time, format) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(time);
  String result = '';
  final DateFormat formatter = DateFormat(format);
  result = formatter.format(date);
  return result;
}

DateFormats(DateTime date, String format) {
  String result = '';
  final DateFormat formatter = DateFormat(format);
  result = formatter.format(date);
  return result;
}

String displayTimeAndDateTimestamp(int time) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(time);
  String result = '';
  final DateFormat formatter = DateFormat("hh:mm:ss");
  result = formatter.format(date);
  return result;
}

String dateFormatsString(String date, String format) {
  print("date==>$date");
  DateTime parsedDate = DateFormat("yyyy-MM-dd").parse(date);
  print("parsed==>${parsedDate.toString().split(" ").first}");
  final DateFormat formats = DateFormat(format);
  String dateString = formats.format(parsedDate);
  print("dateString==>$dateString");
  return dateString;
}

String scoreFormats(String score) {
  String scoreFormat = score.split(" ").first;
  return scoreFormat;
}

String overFormats(String over) {
  String overFormat = over.split(" ").last;
  String overFormatLast = overFormat.split("(").last;
  String overFormatFirst = overFormatLast.split(")").first;
  return "$overFormatFirst Over";
}
