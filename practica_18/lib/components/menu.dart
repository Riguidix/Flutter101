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
  ];
}
