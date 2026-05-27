import 'package:flutter/material.dart';

void main() {
  runApp(App07());
}

class App07 extends StatelessWidget {
  const App07({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cargar Imagen"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/Pawnecta.png'
          )
        ),
      ),
    );
  }
}