import 'package:flutter/material.dart';

class GoBackBtn extends StatelessWidget {
  const GoBackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.arrow_back_sharp),
      onPressed: () => Navigator.pop(context),
    );
  }
}
