import 'package:flutter/material.dart';

void main () {
  runApp(App09());
}

class App09 extends StatelessWidget {
  const App09({ super.key });

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle = TextStyle(
      fontWeight: FontWeight(800),
      fontFamily: 'Karla',
      fontSize: 24,
      color: Colors.green
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Karla',      
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Aplicación con fuentes"),
        ),
        body: Padding(
          padding: EdgeInsetsGeometry.all(30),
          child: Center(      
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(), 
                Text("Karla Regular", style: titleStyle),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ", 
                  style: TextStyle(
                    fontWeight: FontWeight(400),
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),

                Spacer(),

                Text("Karla Medium", style: titleStyle),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ", 
                  style: TextStyle(
                    fontWeight: FontWeight(500),
                    fontSize: 18
                  ),
                  textAlign: TextAlign.center,
                ),

                Spacer(),

                Text("Karla SemiBold", style: titleStyle),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ", 
                  style: TextStyle(
                    fontWeight: FontWeight(600),
                    fontSize: 18
                  ),
                  textAlign: TextAlign.center,
                ),

                Spacer(),

                Text("Karla Bold", style: titleStyle),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ", 
                  style: TextStyle(
                    fontWeight: FontWeight(700),
                    fontSize: 18
                  ),
                  textAlign: TextAlign.center,
                ),

                Spacer(),

                Text("Karla ExtraBold", style: titleStyle),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ", 
                  style: TextStyle(
                    fontWeight: FontWeight(800),
                    fontSize: 18
                  ),
                  textAlign: TextAlign.center,
                ),

                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}