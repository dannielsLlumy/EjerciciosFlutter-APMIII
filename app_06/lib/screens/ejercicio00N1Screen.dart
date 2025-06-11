// 1.  Crear un programa que lea la temperatura en grados Celsius y la convierta a Fahrenheit
// y Kelvin. Usar operadores aritméticos y muestra los resultados con comentarios
// explicativos.

import 'package:flutter/material.dart';

class Ejercicio1 extends StatefulWidget {
  const Ejercicio1({super.key});

  @override
  State<Ejercicio1> createState() => _Ejercicio1State();
}

class _Ejercicio1State extends State<Ejercicio1> {
  final TextEditingController _celsiusController = TextEditingController();
  String _resultado = "";

  void convertirTemperaturas() {
    double? celsius = double.tryParse(_celsiusController.text);

    if (celsius == null) {
      setState(() {
        _resultado = "Por favor, ingresa una temperatura en grados Celsius.";
      });
      return;
    }

    double fahrenheit = (celsius * 9 / 5) + 32;
    double kelvin = celsius + 273.15;

    setState(() {
      _resultado =
          "Temperatura en Fahrenheit: ${fahrenheit} y la temperatura en Kelvin: ${kelvin}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Conversión de Temperaturas")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Temperatura en Celsius:"),
            TextField(
              controller: _celsiusController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),
            FilledButton(
              onPressed: convertirTemperaturas,
              child: Text("Convertir"),
            ),
            SizedBox(height: 16),
            Text(_resultado, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Row(
              children: [
                BackButton(),
                FilledButton.tonal(
                  onPressed: () => Navigator.pop(context),
                  child: Text("RETROCEDER"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
