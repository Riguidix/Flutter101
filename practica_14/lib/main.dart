import 'package:flutter/material.dart';
import 'package:practica_14/pages/home_page.dart';

void main() {
  runApp(const App14());
}

class App14 extends StatelessWidget {
  const App14({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Cubilete",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.2,
            ),
          ),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}
