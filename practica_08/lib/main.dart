import 'package:flutter/material.dart';

void main () {
  runApp(App08());
}

class App08 extends StatelessWidget {
  const App08({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Aplicación con ListView", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Spacer(),

            Column(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.all(20),
                  child: Text("From Network"),
                ),

                Padding(
                  padding: EdgeInsetsGeometry.all(50),
                  child: Image.network("https://flutter.dev/assets/shadow-dash.d59d0e8266b087a7a7f8a61c50ad4f6e.png"),
                ),
              ],
            ),

            Spacer(),

            Column(
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.all(20),
                  child: Text("From Local"),
                ),

                Padding(
                  padding: EdgeInsetsGeometry.all(50),
                  child: Image.asset('assets/flutter.png')),
                ),
              ],
            ),

            Spacer(),
          ],
        ),
      ),
    );
  }
}