import 'package:flutter/material.dart';

class HouseCard extends StatelessWidget {
  const HouseCard({
    super.key,
    required this.rent,
    required this.description,
    required this.distribution,
    required this.src,
  });

  final String rent;
  final String description;
  final String distribution;
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
          ListTile(
            title: Text(
              rent,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
                color: Colors.teal,
              ),
            ),
            subtitle: Text(distribution),
            trailing: Icon(Icons.favorite),
          ),

          Container(padding: EdgeInsets.all(5.0), child: Image.network(src)),

          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(description)],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 10.0,
            children: [
              TextButton(onPressed: () {}, child: Text("Contactar")),
              TextButton(onPressed: () {}, child: Text("Ver más")),
            ],
          ),
        ],
      ),
    );
  }
}
