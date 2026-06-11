import 'dart:math';
import 'package:flutter/material.dart';

import 'package:practica_14/components/dice_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 1;
  int rightDice = 1;

  void rollDice() {
    var range = Random();

    setState(() {
      leftDice = range.nextInt(6) + 1;
      rightDice = range.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 100.0,
        children: [
          Text(
            "${leftDice + rightDice}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 150.0,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20.0,
            children: [
              /* DiceComponent(index: leftDice),
              DiceComponent(index: rightDice), */
              DiceComponent(),
              DiceComponent(),
            ],
          ),

          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: const Text("Tirar Dados", style: TextStyle(fontSize: 20.0)),
          ),
        ],
      ),
    );
  }
}
