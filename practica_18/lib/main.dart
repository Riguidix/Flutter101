import 'package:flutter/material.dart';

void main() {
  runApp(const App18());
}

class App18 extends StatelessWidget {
  const App18({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
