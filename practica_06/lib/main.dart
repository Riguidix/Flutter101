import 'package:flutter/material.dart';

void main() {
    runApp(App06());
}

class App06 extends StatelessWidget {
  const App06({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.black
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight
            )
          ),        
        ),
      ),
    );
  }
}