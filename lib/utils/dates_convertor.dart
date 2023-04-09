import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class DatesConvertor {
  static String convertTimeOfDay(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')} : ${time.minute.toString().padLeft(2, '0')}';
  }

  static String convertDateTimeToDayYear(DateTime date) {
    return DateFormat('dd.MM.yyyy').format(date);
  }

  static String convertDateToMinuteYear(DateTime date) {
    return DateFormat('dd.MM.yyyy HH:mm').format(date);
  }
}
