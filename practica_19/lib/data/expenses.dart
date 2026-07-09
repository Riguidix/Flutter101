import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();
var uuid = Uuid();

enum Category { food, travel, entertainment, work, school }

const CategoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.airplane_ticket,
  Category.entertainment: Icons.movie,
  Category.work: Icons.work,
  Category.school: Icons.school,
};

class Expenses {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expenses({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get dateFormat => formatter.format(date);
}
