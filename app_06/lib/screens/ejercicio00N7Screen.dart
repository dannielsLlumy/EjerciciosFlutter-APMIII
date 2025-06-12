// 7.  Diseñar un programa que lea el nombre, edad y salario de un empleado. Si el empleado
// tiene más de 30 años y su salario es mayor a 3000, incrementa su salario en un 10%.
// Usar operadores relacionales, lógicos y de asignación.

import 'package:flutter/material.dart';

class Ejercicio7 extends StatefulWidget {
  const Ejercicio7({super.key});

  @override
  State<Ejercicio7> createState() => _Ejercicio7State();
}

class _Ejercicio7State extends State<Ejercicio7> {
  final nombreCtrl = TextEditingController();
  final edadCtrl = TextEditingController();
  final salarioCtrl = TextEditingController();
  String _resultado = "";

  void calcularNuevoSalario() {
    String nombre = nombreCtrl.text;
    int? edad = int.tryParse(edadCtrl.text);
    double? salario = double.tryParse(salarioCtrl.text);

    if (nombre.isEmpty || edad == null || salario == null) {
      setState(() => _resultado = "Por favor completa todos los campos.");
      return;
    }

    if (edad > 30 && salario > 3000) {
      double nuevoSalario = salario * 1.10;
      setState(
        () =>
            _resultado =
                "${nombre} recibe un nuevo salario de \$${nuevoSalario.toStringAsFixed(2)} con un aumento del 10%.",
      );
    } else {
      setState(() => _resultado = "${nombre} no recibe un aumento de salario.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Incremento de Salario")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nombreCtrl,
              decoration: InputDecoration(labelText: "Nombre"),
            ),
            TextField(
              controller: edadCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Edad"),
            ),
            TextField(
              controller: salarioCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Salario"),
            ),
            SizedBox(height: 12),
            FilledButton(
              onPressed: calcularNuevoSalario,
              child: Text("Ejecutar"),
            ),
            SizedBox(height: 12),
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
