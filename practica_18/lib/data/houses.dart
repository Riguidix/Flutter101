import 'package:flutter/material.dart';

class House {
  final String Rent;
  final String Description;
  final String Distribution;
  final String Src;

  const House({
    required this.Rent,
    required this.Description,
    required this.Distribution,
    required this.Src,
  });

  static const HouseItems = <House>[
    House(
      Rent: "10,500 por mes",
      Description: "Descripcion",
      Distribution: "Distribution",
      Src:
          "https://images.unsplash.com/photo-1570129477492-45c003edd2be?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),

    House(
      Rent: "10,500 por mes",
      Description: "Descripcion",
      Distribution: "Distribution",
      Src:
          "https://images.unsplash.com/photo-1580587771525-78b9dba3b914?q=80&w=2274&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),

    House(
      Rent: "10,500 por mes",
      Description: "Descripcion",
      Distribution: "Distribution",
      Src:
          "https://images.unsplash.com/photo-1613977257592-4871e5fcd7c4?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
  ];
}
