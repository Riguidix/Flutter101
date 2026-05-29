import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main () {
  runApp(App09());
}

class App09 extends StatelessWidget {
  const App09({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Karla'
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Aplicación con fuentes"),
        ),
      ),
    );
  }
}