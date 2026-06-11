import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.action, required this.icon});

  final VoidCallback action;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: action,
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        side: const BorderSide(color: Colors.blueGrey, width: 2),
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        elevation: 55,
        shadowColor: Colors.blueGrey,
      ),
      child: Icon(icon, size: 44),
    );
  }
}
