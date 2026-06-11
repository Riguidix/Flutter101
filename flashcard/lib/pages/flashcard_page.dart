import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flashcard/components/action_button.dart';

class FlashCardPage extends StatefulWidget {
  const FlashCardPage({super.key});

  @override
  State<FlashCardPage> createState() => _FlashCardPageState();
}

class _FlashCardPageState extends State<FlashCardPage> {
  late int random;
  late List<String> palabrasFavoritas;
  List<String> palabrasAleatorias = [
    'Butterfly',
    'Watch',
    'Walk',
    'Cloud',
    'Guitar',
    'Green',
    'Window',
    'Smile',
    'Forest',
    'Mirror',
    'Jump',
    'Bird',
    'Book',
    'River',
    'Star',
    'Sand',
    'Cat',
    'Mountain',
    'Fire',
    'Hat',
    'Spoon',
    'Wind',
    'Train',
    'Shoe',
    'Moon',
    'Paint',
    'Thunder',
    'Sun',
    'Song',
    'Earth',
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
      backgroundColor: const Color.fromRGBO(0, 150, 136, 0.6),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),

            Center(
              child: Text(
                palabrasAleatorias[random],
                style: GoogleFonts.pacifico(
                  fontSize: 95,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 1.5,
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
