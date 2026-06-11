import 'package:flashcard/pages/flashcard_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlashCard());
}

class FlashCard extends StatelessWidget {
  const FlashCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlashCardPage(),
    );
  }
}
