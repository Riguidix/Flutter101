import 'package:flashcard/components/action_button.dart';
import 'package:flutter/material.dart';

class FlashCardPage extends StatelessWidget {
  const FlashCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),

            Center(
              child: Text(
                "Palabra aleatoria",
                style: const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 25.0,
              children: [
                ActionButton(action: () {}, icon: Icons.favorite),

                ActionButton(action: () {}, icon: Icons.refresh),

                ActionButton(action: () {}, icon: Icons.list),
              ],
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
