import 'package:flutter/material.dart';
import 'package:practica_19/components/list_expenses.dart';
import 'package:practica_19/data/expenses.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  State<ExpensesPage> createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  final List<Expenses> expensesHistory = [
    Expenses(
      title: "Cuatrimestre Mayo - Agosto",
      amount: 2340.99,
      date: DateTime.now(),
      category: Category.school,
    ),

    Expenses(
      title: "Pelicula Obsesion",
      amount: 580.0,
      date: DateTime.now(),
      category: Category.entertainment,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gastos"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [Expanded(child: ListExpenses(expenses: expensesHistory))],
      ),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
