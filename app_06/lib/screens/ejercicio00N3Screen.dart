// 3. Diseñar un programa que permita determinar las raíces de una ecuación de segundo grado

import 'package:flutter/material.dart';
import 'dart:math';

class Ejercicio3 extends StatefulWidget {
  const Ejercicio3({super.key});

  @override
  State<Ejercicio3> createState() => _Ejercicio3State();
}

class _Ejercicio3State extends State<Ejercicio3> {
  final TextEditingController _raizAController = TextEditingController();
  final TextEditingController _raizBController = TextEditingController();
  final TextEditingController _raizCController = TextEditingController();

  String _resultado = "";

  void calcularRaices() {
    double? raizA = double.tryParse(_raizAController.text.trim());
    double? raizB = double.tryParse(_raizBController.text.trim());
    double? raizC = double.tryParse(_raizCController.text.trim());

    // Validación de entrada
    if (raizA == null || raizB == null || raizC == null) {
      if (_resultado != "Por favor, ingresa solo números válidos.") {
        setState(() {
          _resultado = "Por favor, ingresa solo números válidos.";
        });
      }
      return;
    }

    if (raizA == 0) {
      setState(() {
        _resultado =
            "El coeficiente de la raíz 'a' no puede ser 0 en una ecuación de segundo grado.";
      });
      return;
    }

    double discriminante = pow(raizB, 2) - 4 * raizA * raizC;

    if (discriminante < 0) {
      setState(() {
        _resultado = "No hay raíces reales.";
      });
    } else {
      double x1 = (-raizB + sqrt(discriminante)) / (2 * raizA);
      double x2 = (-raizB - sqrt(discriminante)) / (2 * raizA);
      setState(() {
        _resultado = "Las raíces reales son: x1 = $x1 y x2 = $x2.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Raíces de Ecuación Cuadrática")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _raizAController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Coeficiente 'a'"),
            ),
            TextField(
              controller: _raizBController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Coeficiente 'b'"),
            ),
            TextField(
              controller: _raizCController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Coeficiente 'c'"),
            ),
            SizedBox(height: 20),
            FilledButton(
              onPressed: calcularRaices,
              child: Text("Calcular Raíces"),
            ),
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
