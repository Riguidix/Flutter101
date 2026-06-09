import 'package:flutter/material.dart';

void main() {
  runApp(App13());
}

class App13 extends StatelessWidget {
  const App13 ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int counter = 0;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Práctica 13",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35.0
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Número de clics", 
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 70.0
                ),
              ),
              Text("$counter", 
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 70.0
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            counter+= 1;
          }),

          Future.delayed(Duration(seconds: 1))
        },
        backgroundColor: Colors.green,      
        child: Icon(
          Icons.add,
          color: Colors.white,
        )
      ),
    );
  }
}