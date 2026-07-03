import 'package:flutter/material.dart';
import 'package:practica_18/components/go_back.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Barras de Progreso")),
      body: _View(),
      floatingActionButton: GoBackBtn(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 200, horizontal: 100),
      child: Center(
        child: Column(
          spacing: 50,
          children: [
            Text("Controles Generales", style: TextStyle(fontSize: 20)),

            CircularProgressIndicator(
              strokeWidth: 10,
              backgroundColor: Colors.tealAccent,
            ),

            Text("Controles Controlados", style: TextStyle(fontSize: 20)),

            _ProgressControls(),
          ],
        ),
      ),
    );
  }
}

class _ProgressControls extends StatelessWidget {
  const _ProgressControls({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            strokeWidth: 10,
            backgroundColor: Colors.tealAccent,
            value: 0.2,
          ),

          SizedBox(width: 20),

          Expanded(child: LinearProgressIndicator()),
        ],
      ),
    );
  }
}
