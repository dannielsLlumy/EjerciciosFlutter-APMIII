// 4. Desarrollar un programa que convierta una cantidad de dinero en dólares a euros,
// yenes y libras. Utilizar operadores aritméticos para realizar las conversiones y
// operadores de asignación para actualizar las cantidades.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ejercicio4 extends StatefulWidget {
  const Ejercicio4({super.key});

  @override
  State<Ejercicio4> createState() => _Ejercicio4State();
}

class _Ejercicio4State extends State<Ejercicio4> {
  final TextEditingController _dolaresController = TextEditingController();
  String _resultado = "";

  void convertirMonedas() {
    double? dolares = double.tryParse(_dolaresController.text.trim());

    if (dolares == null || dolares < 0) {
      setState(() {
        _resultado = "Por favor, ingresa una cantidad válida mayor a 0.";
      });
      return;
    }

    //TASAS DE CAMBIOS
    double euros = dolares * 0.85;
    double yenes = dolares * 155.3;
    double libras = dolares * 0.73;

    setState(() {
      _resultado =
          "Conversión de \$${dolares} a: Euros: \$${euros} Yenes: \$${yenes} Libras: \$${libras}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Conversión de Monedas")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _dolaresController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Cantidad en Dolares"),
            ),
            SizedBox(height: 20),
            FilledButton(onPressed: convertirMonedas, child: Text("Convertir")),
            SizedBox(height: 20),
            Text(_resultado),
            SizedBox(height: 24),
            Row(
              children: [
                BackButton(),
                FilledButton.tonal(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Retroceder"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
