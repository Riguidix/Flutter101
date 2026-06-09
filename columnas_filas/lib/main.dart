import 'package:flutter/material.dart';

void main() {
  runApp(const Columnas_Filas());
}

class Columnas_Filas extends StatelessWidget {
  const Columnas_Filas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                height: double.infinity,
                width: 100,
              ),
          
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.yellow,               
                    height: 100,
                    width: 100,

                    child: Text("Reydescel Antonio Herrera Rodríguez", textAlign: TextAlign.center)
                  ),

                  Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    height: 100,
                    width: 100,

                    child: Text("1124150085", textAlign: TextAlign.center)
                  ),
                ],
              ),
          
              Container(
                color: Colors.blue,
                height: double.infinity,
                width: 100,
              ),
            ],
          ),
        )
      ),
    );
  }
}
