import 'package:flutter/material.dart';
import 'package:practica_19/pages/expenses_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF6CAE75),
          secondary: Color(0xFFF5A65B),
          tertiary: Color(0xFF8B9474),
          primaryContainer: Color(0xFF8BBD8B),
          surface: Color(0xFFC1CC99),
          onPrimary: Colors.white,
          onSecondary: Colors.black87,
        ),
        scaffoldBackgroundColor: const Color(0xFFC1CC99),
      ),
      home: const ExpensesPage(),
    );
  }
}
