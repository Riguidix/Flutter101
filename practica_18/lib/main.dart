import 'package:flutter/material.dart';
import 'package:practica_18/pages/buttons_page.dart';
import 'package:practica_18/pages/cards_page.dart';
import 'package:practica_18/pages/home_page.dart';

void main() {
  runApp(const App18());
}

class App18 extends StatelessWidget {
  const App18({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
      ),
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const HomePage(),
        '/buttons': (BuildContext context) => const ButtonsPage(),
        '/cards': (BuildContext context) => const CardsPage(),
      },
    );
  }
}
