import 'dart:math';

import 'package:flashcard/components/action_button.dart';
import 'package:flutter/material.dart';

class FlashCardPage extends StatefulWidget {
  const FlashCardPage({super.key});

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  late int random;
  late List<String> palabrasFavoritas;
  List<String> palabrasAleatorias = [
    'Mariposa',
    'Reloj',
    'Caminar',
    'Nube',
    'Guitarra',
    'Azul',
    'Ventana',
    'Sonrisa',
    'Bosque',
    'Espejo',
    'Saltar',
    'Pájaro',
    'Libro',
    'Río',
    'Estrella',
    'Arena',
    'Gato',
    'Montaña',
    'Fuego',
    'Sombrero',
    'Cuchara',
    'Viento',
    'Tren',
    'Zapato',
    'Luna',
    'Pintura',
    'Relámpago',
    'Sol',
    'Canción',
    'Tierra',
  ];

  @override
  void initState() {
    super.initState();

    palabrasFavoritas = [];
    random = Random().nextInt(palabrasAleatorias.length);
  }

  void _handleFavorite() {
    String palabraActual = palabrasAleatorias[random];

    setState(() {
      if (!palabrasFavoritas.contains(palabraActual)) {
        palabrasFavoritas.add(palabraActual);
      }

      random = Random().nextInt(palabrasAleatorias.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),

            Center(
              child: Text(
                palabrasAleatorias[random],
                style: const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 25.0,
              children: [
                ActionButton(
                  action: () {
                    _handleFavorite();
                  },
                  icon: Icons.favorite,
                ),

                ActionButton(
                  action: () {
                    setState(() {
                      random = Random().nextInt(palabrasAleatorias.length);
                    });
                  },
                  icon: Icons.refresh,
                ),

                ActionButton(
                  action: () {
                    print("Palabras Favoritas: $palabrasFavoritas");
                  },
                  icon: Icons.list,
                ),
              ],
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
