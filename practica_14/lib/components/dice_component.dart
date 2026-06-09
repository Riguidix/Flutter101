import 'dart:math';
import 'package:flutter/material.dart';

/* class DiceComponent extends StatelessWidget {
  final int index;

  const DiceComponent({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/dice$index.png", scale: 3);
  }
} */

class DiceComponent extends StatefulWidget {
  const DiceComponent({super.key});

  @override
  State<DiceComponent> createState() => _DiceComponentState();
}

class _DiceComponentState extends State<DiceComponent> {
  var index = 1;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        var range = Random();

        setState(() {
          index = range.nextInt(6) + 1;
        });
      },
      child: Image.asset("assets/dice$index.png", scale: 3),
    );
  }
}
