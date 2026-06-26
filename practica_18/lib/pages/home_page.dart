import 'package:flutter/material.dart';
import 'package:practica_18/data/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inicio")),
      body: _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Menu.AppMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = Menu.AppMenuItems[index];

        return ListTile(
          leading: Icon(menuItem.Icon, color: Colors.teal),
          title: Text(menuItem.Title),
          subtitle: Text(menuItem.Subtitle),
          trailing: Icon(Icons.arrow_right_sharp),
          onTap: () => Navigator.pushNamed(context, menuItem.Link),
        );
      },
    );
  }
}
