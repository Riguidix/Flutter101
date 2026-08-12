import 'package:flutter/material.dart';

import 'package:practica_19/data/expenses.dart';

class CardExpenses extends StatelessWidget {
  const CardExpenses({super.key, required this.expense});

  final Expenses expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          spacing: 10,
          children: [
            Text(
              expense.title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  "\$${expense.amount.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Row(
                  spacing: 15,
                  children: [
                    Icon(CategoryIcons[expense.category], color: Colors.white),
                    Text(
                      expense.dateFormat,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
