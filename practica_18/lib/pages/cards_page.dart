import 'package:flutter/material.dart';
import 'package:practica_18/components/go_back.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tarjetas")),
      body: Center(child: Text("Tarjetas")),
      floatingActionButton: GoBackBtn(),
    );
  }
}
