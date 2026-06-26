import 'package:flutter/material.dart';
import 'package:practica_18/components/car_card.dart';
import 'package:practica_18/components/go_back.dart';
import 'package:practica_18/data/cars.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Venta de Automoviles")),
      body: _View(),
      floatingActionButton: GoBackBtn(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Car.CarItems.length,
      itemBuilder: (context, index) {
        final carItem = Car.CarItems[index];

        return CarCard(
          model: carItem.Model,
          location: carItem.Location,
          kilometers: carItem.Kilometers,
          price: carItem.Price,
          src: carItem.Src,
        );
      },
    );
  }
}
