import 'package:flutter/material.dart';
import 'package:practica_19/components/card_expenses.dart';
import 'package:practica_19/data/expenses.dart';

class ListExpenses extends StatelessWidget {
  const ListExpenses({super.key, required this.expenses});

  final List<Expenses> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => CardExpenses(expense: expenses[index]),
    );
  }
}
