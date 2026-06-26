import 'package:flutter/material.dart';
import 'package:practica_18/components/go_back.dart';
import 'package:practica_18/components/house_card.dart';
import 'package:practica_18/data/houses.dart';

class HousesPage extends StatelessWidget {
  const HousesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Venta de Casas")),
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
      itemCount: House.HouseItems.length,
      itemBuilder: (context, index) {
        final houseItem = House.HouseItems[index];

        return HouseCard(
          rent: houseItem.Rent,
          description: houseItem.Description,
          distribution: houseItem.Distribution,
          src: houseItem.Src,
        );
      },
    );
  }
}
