import 'package:flutter/material.dart';

void main() {
  runApp(App03());
}

class App03 extends StatelessWidget {
  const App03({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Primer scaffold",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Hello world",
            style: TextStyle(
              color: Colors.green,
              fontSize: 36
            ),
          ),
        ),
        drawer: Drawer(
          child: Center(
            child: Text("Drawer"),
          ),
        ),
      )
    );
  }
}