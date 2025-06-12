// 6.  Crea un programa que determine si un número dado es primo o no. El programa
// solicitará al usuario ingresar un número y luego imprimirá un mensaje indicando si el
// número es primo o no. Un número primo es aquel que es divisible solo por 1 y por sí
// mismo.

import 'package:flutter/material.dart';

class Ejercicio6 extends StatefulWidget {
  const Ejercicio6({super.key});

  @override
  State<Ejercicio6> createState() => _Ejercicio6State();
}

class _Ejercicio6State extends State<Ejercicio6> {
  final TextEditingController _numeroController = TextEditingController();
  String _resultado = "";

  void verificarNumeroPrimo() {
    int? numero = int.tryParse(_numeroController.text.trim());
    if (numero == null || numero <= 1) {
      setState(() => _resultado = "Por favor, ingresa un número valido.");
      return;
    }
    bool esPrimo = true;
    for (int i = 2; i <= numero ~/ 2; i++) {
      if (numero % i == 0) {
        esPrimo = false;
        break;
      }
    }
    setState(() {
      _resultado =
          esPrimo
              ? "El número $numero es primo."
              : "El número $numero no es primo.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Numero Primo")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numeroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Ingrese un número:"),
            ),
            SizedBox(height: 12),
            FilledButton(
              onPressed: verificarNumeroPrimo,
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
