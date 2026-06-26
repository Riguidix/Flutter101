import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.src});
  final String src;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10.0),
      ),
      margin: EdgeInsets.all(5.0),
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(src),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Card Title"),
                Text(
                  "Some quick example text to build on the card title and make up the bulk of the card's content. ",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
