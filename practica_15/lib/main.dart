import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Color(0xFF466362)),
      home: Scaffold(
        appBar: AppBar(title: Text("Ejemplos de botones")),
        body: Ejemplos(),
      ),
    );
  }
}

class Ejemplos extends StatefulWidget {
  const Ejemplos({super.key});

  @override
  State<Ejemplos> createState() => _EjemplosState();
}

class _EjemplosState extends State<Ejemplos> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 25,
        children: [
          ElevatedButton(
            onPressed: () => {print("Botón ElevatedButton presionado")},
            child: Text("Elevated Button", style: TextStyle(fontSize: 25)),
          ),

          OutlinedButton(
            onPressed: () => {print("Botón OutlinedButton presionado")},
            child: Text("Outlined Button", style: TextStyle(fontSize: 25)),
          ),

          FilledButton(
            onPressed: () => {print("Botón FilledButton presionado")},
            child: Text("Filled Button", style: TextStyle(fontSize: 25)),
          ),

          TextButton(
            onPressed: () => {print("Botón TextButton presionado")},
            child: Text("Text Button", style: TextStyle(fontSize: 25)),
          ),

          IconButton(
            onPressed: () => {print("Botón IconButton presionado")},
            icon: Icon(Icons.favorite),
          ),

          FloatingActionButton(
            onPressed: () => {print("Botón FloatingActionButton presionado")},
            child: Icon(Icons.favorite),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              textStyle: TextStyle(fontWeight: FontWeight.w800),
            ),
            onPressed: () => {print("Botón CustomButton presionado")},
            child: Text("Custom Button", style: TextStyle(fontSize: 25)),
          ),

          ElevatedButton.icon(
            onPressed: () => {
              print("Botón ElevatedButton con Icono presionado"),
            },
            icon: Icon(Icons.add),
            label: Text("Add New", style: TextStyle(fontSize: 25)),
          ),

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green, Colors.blueGrey]),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                foregroundColor: Colors.white,
              ),
              onPressed: () => {
                print("Botón ElevatedButton con Gradiente presionado"),
              },
              child: Text("Elevated Button", style: TextStyle(fontSize: 25)),
            ),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(5),
              textStyle: TextStyle(fontWeight: FontWeight.w800),
            ),
            onPressed: () => {print("Botón Circular presionado")},
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
