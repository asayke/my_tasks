import 'package:flutter/material.dart';

class Task {
  final String name;
  final DateTime date;
  final TimeOfDay time;

  Task({required this.name, required this.date, required this.time});
}