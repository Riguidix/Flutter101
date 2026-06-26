import 'package:flutter/material.dart';
import 'package:practica_18/components/go_back.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Botones")),
      body: _View(),
      floatingActionButton: GoBackBtn(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Wrap(
          spacing: 25,
          children: [
            ElevatedButton(
              onPressed: () => {print("Botón ElevatedButton presionado")},
              child: Text("Elevated Button", style: TextStyle(fontSize: 25)),
            ),

            ElevatedButton(
              onPressed: null,
              child: Text("Elevated Button", style: TextStyle(fontSize: 25)),
            ),

            ElevatedButton.icon(
              onPressed: () => {
                print("Botón ElevatedButton con Icono presionado"),
              },
              icon: Icon(Icons.add),
              label: Text("Elevated Icon", style: TextStyle(fontSize: 25)),
            ),

            FilledButton(
              onPressed: () {},
              child: Text("Filled Button", style: TextStyle(fontSize: 25)),
            ),

            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button", style: TextStyle(fontSize: 25)),
            ),

            OutlinedButton.icon(
              onPressed: () => {
                print("Botón ElevatedButton con Icono presionado"),
              },
              icon: Icon(Icons.terminal),
              label: Text("Outlined Icon", style: TextStyle(fontSize: 25)),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.phone),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),

            _CustomBtn(),
          ],
        ),
      ),
    );
  }
}

class _CustomBtn extends StatelessWidget {
  const _CustomBtn();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: Material(
        color: color.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
            child: Text("Hola Mundo", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
