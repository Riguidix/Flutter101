import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      margin: EdgeInsets.all(15),
      color: Colors.teal,
      elevation: 10.0,
      child: Column(
        children: [
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(
              "Titulo",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            textColor: Colors.white,
            subtitle: Text(
              "Este es el subtitulo del card. Aquí se puede colocar la descripción del card",
              style: TextStyle(color: Colors.white70),
            ),
            leading: const Icon(Icons.home),
            iconColor: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 8.0,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('Aceptar'),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('Cancelar'),
              ),
              const SizedBox(width: 15.0),
            ],
          ),
        ],
      ),
    );
  }
}
