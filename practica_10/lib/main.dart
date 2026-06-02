import 'package:flutter/material.dart';

void main() {
  runApp(const App10());
}

class App10 extends StatelessWidget {
  const App10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                width: 100,
                child: Row(                  
                  children: [
                    Container(
                      color: Colors.white,
                      width: 50,
                    ),
                    Container(
                      color: Colors.red,
                      width: 50,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 100,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                width: 100,
                child: Text("Hello, World"),
              ),
              Container(
                color: Colors.orange,
                height: 100,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                width: 100,
                child: Text("Hello, World"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
