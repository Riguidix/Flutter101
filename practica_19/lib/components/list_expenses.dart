import 'package:flutter/material.dart';
import 'package:practica_19/components/card_expenses.dart';
import 'package:practica_19/components/empty_state.dart';
import 'package:practica_19/data/expenses.dart';

class ListExpenses extends StatelessWidget {
  const ListExpenses({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expenses> expenses;
  final void Function(Expenses expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    if (expenses.isEmpty) {
      return const EmptyState();
    }

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 80, top: 10),
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        final expense = expenses[index];

        return Dismissible(
          key: ValueKey(expense.id),
          background: Container(
            color: Colors.red.shade800,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 50),
            margin: const EdgeInsets.all(15),
            child: const Icon(Icons.delete, color: Colors.white, size: 30),
          ),
          onDismissed: (direction) {
            onRemoveExpense(expense);
          },
          child: CardExpenses(expense: expense),
        );
      },
    );
  }
}
