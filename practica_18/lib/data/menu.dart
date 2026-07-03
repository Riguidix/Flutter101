import 'package:flutter/material.dart';

class Menu {
  final String Title;
  final String Subtitle;
  final String Link;
  final IconData Icon;

  const Menu({
    required this.Title,
    required this.Subtitle,
    required this.Link,
    required this.Icon,
  });

  static const List<Menu> AppMenuItems = <Menu>[
    Menu(
      Title: "Botones",
      Subtitle: "Varios Botones",
      Link: "/buttons",
      Icon: Icons.smart_button,
    ),

    Menu(
      Title: "Tarjetas",
      Subtitle: "Varias Tarjetas",
      Link: "/cards",
      Icon: Icons.card_membership,
    ),

    Menu(
      Title: "Tarjetas de Casas",
      Subtitle: "Práctica de Cards para venta de casas",
      Link: "/houses",
      Icon: Icons.house_sharp,
    ),

    Menu(
      Title: "Tarjetas de Autos",
      Subtitle: "Práctica de Cards para venta de automoviles",
      Link: "/cars",
      Icon: Icons.car_rental_outlined,
    ),

    Menu(
      Title: "Progress Bar",
      Subtitle: "Generales y controlados",
      Link: "/progress",
      Icon: Icons.refresh_rounded,
    ),

    Menu(
      Title: "Controles UI",
      Subtitle: "Uso de controles de UI",
      Link: "/controls",
      Icon: Icons.control_point,
    ),
  ];
}
