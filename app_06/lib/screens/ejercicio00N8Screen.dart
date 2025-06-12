// 8. Se solicita al usuario ingresar su edad y el monto de su salario mensual. Si el usuario
// tiene entre 18 y 30 años, y su salario mensual es mayor a 2000 dólares, el programa
// imprimirá "La persona es elegible para un préstamo". En caso contrario, imprimirá "Lo
// siento, la persona no es elegible para un préstamo".

import 'package:flutter/material.dart';

class Ejercicio8 extends StatefulWidget {
  const Ejercicio8({super.key});

  @override
  State<Ejercicio8> createState() => _Ejercicio8State();
}

class _Ejercicio8State extends State<Ejercicio8> {
  final edadCtrl = TextEditingController();
  final salarioCtrl = TextEditingController();
  String _resultado = "";

  void verificarPrestamo() {
    int? edad = int.tryParse(edadCtrl.text);
    double? salario = double.tryParse(salarioCtrl.text);

    if (edad == null || salario == null) {
      setState(() => _resultado = "Por favor completa todos los campos.");
      return;
    }

    if (edad >= 18 && edad <= 30 && salario > 2000) {
      setState(() => _resultado = "La persona es elegible para un préstamo.");
    } else {
      setState(
        () =>
            _resultado =
                "Lo siento, la persona no es elegible para un préstamo.",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Prestamo")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: edadCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Edad"),
            ),
            TextField(
              controller: salarioCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Salario Mensual"),
            ),
            SizedBox(height: 12),
            FilledButton(
              onPressed: verificarPrestamo,
              child: Text("Verificar"),
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
