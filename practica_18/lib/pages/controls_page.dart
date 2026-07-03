import 'package:flutter/material.dart';
import 'package:practica_18/components/go_back.dart';

class ControlsPage extends StatelessWidget {
  const ControlsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Controles de UI")),
      body: _View(),
      floatingActionButton: GoBackBtn(),
    );
  }
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

enum Transporte { auto, avion, camion, barco }

class _ViewState extends State<_View> {
  bool _lights = false;
  bool _airplaneMode = false;
  bool _desayuno = false;
  bool _comida = false;
  bool _cena = false;

  Transporte? transporteSelect = Transporte.auto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 20),
      child: Center(
        child: Column(
          children: [
            SwitchListTile(
              title: Text("Luces"),
              subtitle: Text("Prender leds de práctica"),
              value: _lights,
              onChanged: (bool value) {
                setState(() {
                  _lights = value;
                });
              },
              secondary: const Icon(Icons.lightbulb_outline),
            ),

            SwitchListTile(
              title: const Text("Modo Avion"),
              value: _airplaneMode,
              onChanged: (bool value) {
                setState(() {
                  _airplaneMode = value;
                });
              },
              secondary: const Icon(Icons.airplane_ticket),
            ),

            ExpansionTile(
              title: Text("Medios de transporte:"),
              subtitle: Text("$transporteSelect"),
              children: [
                RadioGroup(
                  groupValue: transporteSelect,
                  onChanged: (Transporte? newValue) =>
                      transporteSelect = newValue,
                  child: Column(
                    children: [
                      RadioListTile(
                        value: Transporte.auto,
                        title: Text("Por auto"),
                        subtitle: Text("Uso de carreteras"),
                      ),

                      RadioListTile(
                        value: Transporte.avion,
                        title: Text("Por avión"),
                        subtitle: Text("Uso de aeropuertos"),
                      ),

                      RadioListTile(
                        value: Transporte.camion,
                        title: Text("Por camión"),
                        subtitle: Text("Uso de carreteras"),
                      ),

                      RadioListTile(
                        value: Transporte.barco,
                        title: Text("Por barco"),
                        subtitle: Text("Uso de muelles"),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            CheckboxListTile(
              title: Text("¿Incluye Desayuno?"),
              value: _desayuno,
              onChanged: (value) => setState(() => _desayuno = !_desayuno),
            ),

            CheckboxListTile(
              title: Text("¿Incluye Comida?"),
              value: _comida,
              onChanged: (value) => setState(() => _comida = !_comida),
            ),

            CheckboxListTile(
              title: Text("¿Incluye Cena?"),
              value: _cena,
              onChanged: (value) => setState(() => _cena = !_cena),
            ),
          ],
        ),
      ),
    );
  }
}
