import 'dart:math';
import 'package:flutter/material.dart';

class FlashCardPage extends StatefulWidget {
  const FlashCardPage({super.key});

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  List<String> palabrasFavoritas = [];
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

  late int random;

  @override
  void initState() {
    super.initState();

    random = Random().nextInt(palabrasAleatorias.length);
  }

  void _mostrarFavoritos() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.0,
            children: [
              Center(
                child: Container(
                  width: 40.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const Text(
                'Mis Favoritas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 16),

              Expanded(
                child: palabrasFavoritas.isEmpty
                    ? const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 50.0,
                          children: [
                            Icon(Icons.info, size: 48, color: Colors.black54),

                            Text(
                              'Aún no has agregado\n palabras favoritas.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: palabrasFavoritas.length,
                        itemBuilder: (context, index) {
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
                _actionButton(Icons.favorite, () {
                  String palabraActual = palabrasAleatorias[random];

                  setState(() {
                    if (!palabrasFavoritas.contains(palabraActual)) {
                      palabrasFavoritas.add(palabraActual);
                    }

                    random = Random().nextInt(palabrasAleatorias.length);
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'La palabra "$palabraActual" se ha agregado exitosamente!',
                        style: TextStyle(fontSize: 18),
                      ),
                      duration: Duration(milliseconds: 1000),
                    ),
                  );
                }),

                _actionButton(Icons.refresh, () {
                  setState(() {
                    random = Random().nextInt(palabrasAleatorias.length);
                  });
                }),

                _actionButton(Icons.list, () {
                  _mostrarFavoritos();
                }),
              ],
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _actionButton(IconData icon, VoidCallback action) {
    return OutlinedButton(
      onPressed: action,
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        side: const BorderSide(color: Colors.white, width: 2),
        padding: const EdgeInsets.all(20),
        foregroundColor: Colors.white,
      ),
      child: Icon(icon, size: 32),
    );
  }
}
