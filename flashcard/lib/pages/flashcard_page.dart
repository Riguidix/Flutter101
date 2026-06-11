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
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.white, width: 2),
                    padding: const EdgeInsets.all(20),
                    foregroundColor: Colors.white,
                  ),
                  child: Icon(Icons.favorite, size: 32),
                ),

                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.white, width: 2),
                    padding: const EdgeInsets.all(20),
                    foregroundColor: Colors.white,
                  ),
                  child: Icon(Icons.refresh, size: 32),
                ),

                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.white, width: 2),
                    padding: const EdgeInsets.all(20),
                    foregroundColor: Colors.white,
                  ),
                  child: Icon(Icons.list, size: 32),
                ),
              ],
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
