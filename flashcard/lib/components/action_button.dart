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
        side: const BorderSide(color: Colors.white, width: 2),
        padding: const EdgeInsets.all(20),
        foregroundColor: Colors.white,
      ),
      child: Icon(icon, size: 32),
    );
  }
}
