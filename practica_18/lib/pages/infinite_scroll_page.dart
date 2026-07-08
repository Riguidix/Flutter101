import 'package:flutter/material.dart';

class InfinitePage extends StatefulWidget {
  const InfinitePage({super.key});

  @override
  State<InfinitePage> createState() => _InfinitePageState();
}

class _InfinitePageState extends State<InfinitePage> {
  List<int> imagenesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: imagenesIds.length,
        itemBuilder: (context, index) {
          return FadeInImage(
            fit: BoxFit.cover,
            height: 300.0,
            placeholder: AssetImage("images/loading.gif"),
            placeholderFit: BoxFit.contain,
            image: NetworkImage(
              "https://picsum.photos/id/${imagenesIds[index]}/500/300",
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}
