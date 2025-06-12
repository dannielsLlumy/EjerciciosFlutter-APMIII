// 2. Crear un programa que solicite al usuario tres números y determine cuál es el mayor, el
// menor y si alguno de ellos es igual utilizando operadores relacionales y lógicos.

import 'package:flutter/material.dart';

class Ejercicio2 extends StatefulWidget {
  const Ejercicio2({super.key});

  @override
  State<Ejercicio2> createState() => _Ejercicio2State();
}

class _Ejercicio2State extends State<Ejercicio2> {
  final TextEditingController _numero1Controller = TextEditingController();
  final TextEditingController _numero2Controller = TextEditingController();
  final TextEditingController _numero3Controller = TextEditingController();

  String _resultado = "";

  void compararNumeros() {
    double? numero1 = double.tryParse(_numero1Controller.text.trim());
    double? numero2 = double.tryParse(_numero2Controller.text.trim());
    double? numero3 = double.tryParse(_numero3Controller.text.trim());

    if (numero1 == null || numero2 == null || numero3 == null) {
      setState(() {
        _resultado = "Por favor, ingresa solo tres números.";
      });
      return;
    }
    double numeroMayor = numero1;
    double numeroMenor = numero1;

    if (numero2 > numeroMayor) numeroMayor = numero2;
    if (numero3 > numeroMayor) numeroMayor = numero3;

    if (numero2 < numeroMenor) numeroMenor = numero2;
    if (numero3 < numeroMenor) numeroMenor = numero3;

    bool iguales =
        numero1 == numero2 || numero1 == numero3 || numero2 == numero3;

    setState(() {
      _resultado =
          "El número mayor es: ${numeroMayor} El número menor es: ${numeroMenor} Los números son iguales: ${iguales}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Comparación de números")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numero1Controller,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Numero 1"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _numero2Controller,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Numero 2"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _numero3Controller,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Numero 3"),
            ),
            SizedBox(height: 20),
            FilledButton(onPressed: compararNumeros, child: Text("Comparar")),
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
