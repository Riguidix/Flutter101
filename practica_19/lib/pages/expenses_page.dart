import 'package:flutter/material.dart';
import 'package:practica_19/components/form_expense.dart';
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
      title: "Película Obsesión",
      amount: 580.0,
      date: DateTime.now(),
      category: Category.entertainment,
    ),
    Expenses(
      title: "Película Aladdin",
      amount: 580.0,
      date: DateTime.now(),
      category: Category.entertainment,
    ),
    Expenses(
      title: "Película Wall-E",
      amount: 580.0,
      date: DateTime.now(),
      category: Category.entertainment,
    ),
  ];

  void _agregarGasto() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) =>
          FormExpense(onAddExpense: _cargarGasto),
    );
  }

  void _cargarGasto(Expenses expense) {
    setState(() {
      expensesHistory.add(expense);
    });
  }

  void _removeExpenses(Expenses expense) {
    final expenseIndex = expensesHistory.indexOf(expense);

    setState(() {
      expensesHistory.remove(expense);
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: const Text('Gasto eliminado'),
        action: SnackBarAction(
          label: 'Deshacer',
          textColor: Theme.of(context).colorScheme.primary,
          onPressed: () {
            setState(() {
              expensesHistory.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mis Gastos",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListExpenses(
              expenses: expensesHistory,
              onRemoveExpense: _removeExpenses,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _agregarGasto,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.add),
        label: const Text("Nuevo Gasto"),
        elevation: 4,
      ),
    );
  }
}
