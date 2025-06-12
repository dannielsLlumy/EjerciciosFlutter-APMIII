import 'package:flutter/material.dart';

// 11. Se requiere un programa que determine si un estudiante es apto para una becа
// universitaria. El programa solicitará al usuario su promedio de calificaciones y el ingreso
// mensual de su familia. Si el promedio de calificaciones es mayor o igual a 9 y el ingreso
// mensual de la familia es menor a 3000 dólares, el programa imprimirá "El estudiante es
// elegible para la beca". De lo contrario, imprimirá "Lo siento, el estudiante no es elegible
// para la bеса".

import 'package:flutter/material.dart';

class Ejercicio11 extends StatefulWidget {
  const Ejercicio11({super.key});

  @override
  State<Ejercicio11> createState() => _Ejercicio11State();
}

class _Ejercicio11State extends State<Ejercicio11> {
  final TextEditingController _promedioController = TextEditingController();
  final TextEditingController _ingresoController = TextEditingController();

  String _resultado = "";

  void evaluarBeca(){
    double? promedio = double.tryParse(_promedioController.text);
    double? ingreso = double.tryParse(_ingresoController.text);

    if (promedio == null || ingreso == null){
      setState(() {
        _resultado = "Por favor, ingresa valores numéricos.";
      });
      return;
    }

    if (promedio == null || ingreso == null) {
      setState(() {
        _resultado = "Por favor, ingrese valores válidos.";
      });
      return;
    }

    if (promedio >= 9 && ingreso < 3000) {
      setState(() {
        _resultado = "El estudiante es elegible para la beca.";
      });
    } else {
      setState(() {
        _resultado = "Lo siento, el estudiante no es elegible para la beca.";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Elegibilidad para la Beca Universitaria")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _promedioController,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Promedio del estudiante"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _ingresoController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(labelText: "Ingreso mensual familiar"),
            ),
            SizedBox(height: 20),
            FilledButton(onPressed: evaluarBeca, child: Text("Evaluar")),
            SizedBox(height: 20),
            Text(_resultado, style: TextStyle(fontSize: 16)),
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