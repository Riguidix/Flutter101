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
        palabrasAleatorias.remove(palabraActual);
      }

      random = Random().nextInt(palabrasAleatorias.length);
    });
  }

  void _mostrarFavoritos() {
    if (palabrasFavoritas.length >= 15) {
      setState(() {
        palabrasFavoritas.clear();
      });
    }

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              Center(
                child: Container(
                  width: 120.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const Text(
                "Mis palabras favoritas",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),

              const SizedBox(height: 24),

              Expanded(
                child: palabrasFavoritas.isEmpty
                    ? const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.info,
                              size: 120,
                              color: Color(0xFCCCCCCC),
                            ),

                            SizedBox(height: 50),

                            Text(
                              'Aún no has agregado\n palabras favoritas.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),

                            Spacer(),
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: palabrasFavoritas.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            title: Text(
                              palabrasFavoritas[index],
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          );
                        },
                        addAutomaticKeepAlives: false,
                      ),
              ),
            ],
          ),
        );
      },
    );
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
                  action: () =>
                      palabrasAleatorias.isNotEmpty ? _handleFavorite() : () {},
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
                  action: () => _mostrarFavoritos(),
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
