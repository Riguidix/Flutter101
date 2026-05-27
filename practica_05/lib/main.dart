import 'package:flutter/material.dart';

void main() {
  runApp(const App05());
}

class App05 extends StatelessWidget {
  const App05({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Agregando widgets"),
          centerTitle: true,
        ),
        body: SizedBox.expand(
          child: Column(          
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Universidad Tecnológica"),
              Text("Universidad Tecnológica 2"),
              Text("Universidad Tecnológica 3")
            ],
          )
        ),
      ),
    );
  }
}
