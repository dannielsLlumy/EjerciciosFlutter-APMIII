// 5. Se necesita un programa que determine si un año dado es bisiesto o no. El programa
// solicitará al usuario ingresar el año y luego imprimirá un mensaje indicando si el año es
// bisiesto o no. Un año es bisiesto si es divisible por 4 pero no por 100, o si es divisible por
// 400.

import 'package:flutter/material.dart';

class Ejercicio5 extends StatefulWidget {
  const Ejercicio5({super.key});

  @override
  State<Ejercicio5> createState() => _Ejercicio5State();
}

class _Ejercicio5State extends State<Ejercicio5> {
  final TextEditingController _anioController = TextEditingController();
  String _resultado = "";

  void verificarAnioBisiesto() {
    int? anio = int.tryParse(_anioController.text.trim());

    if (anio == null) {
      setState(() {
        _resultado = "Por favor, ingresa un año valido.";
        return;
      });
    }

    bool bisiesto = (anio! % 4 == 0 && anio! % 100 != 0) || (anio! % 400 == 0);
    setState(() {
      _resultado = bisiesto
          ? "El año $anio es bisiesto."
          : "El año $anio no es bisiesto.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Año Bisiesto")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _anioController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Ingrese el Año:"),
            ),
            SizedBox(height: 12),
            FilledButton(
              onPressed: verificarAnioBisiesto,
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
