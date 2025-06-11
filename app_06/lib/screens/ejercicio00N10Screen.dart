import 'package:flutter/material.dart';

// 10. Se solicita un programa que evalúe si un estudiante puede participar en un programa de
// intercambio estudiantil. El programa pedirá al usuario su edad, nivel de inglés (básico,
// intermedio o avanzado) y promedio de calificaciones. Si el estudiante tiene entre 16 y
// 25 años, un nivel de inglés intermedio o avanzado, y un promedio de calificaciones
// mayor o igual a 8, el programa imprimirá "El estudiante es apto para participar en el
// programa de intercambio". En caso contrario, imprimirá "Lo siento, el estudiante no
// cumple con los requisitos para el programa de intercambio".
class Ejercicio10 extends StatefulWidget {
  const Ejercicio10({super.key});

  @override
  State<Ejercicio10> createState() => _Ejercicio10State();
}

class _Ejercicio10State extends State<Ejercicio10> {
  final TextEditingController _edadController = TextEditingController();
  final TextEditingController _promedioController = TextEditingController();
  String _nivelIngles = "Básico";
  String _resultado = "";

  void evaluarEstudiante() {
    int? edad = int.tryParse(_edadController.text);
    double? promedio = double.tryParse(_promedioController.text);

    if (edad == null && promedio == null) {
      setState(() {
        _resultado = "Por favor, ingresa tu edad y promedio de calificaciones.";
      });
      return;
    }

    if (edad != null &&
        edad >= 16 &&
        edad <= 25 &&
        (_nivelIngles == "Intermedio" || _nivelIngles == "Avanzado") &&
        promedio != null &&
        promedio >= 8) {
      setState(() {
        _resultado =
            "El estudiante es apto para participar en el programa de intercambio.";
      });
    } else {
      setState(() {
        _resultado =
            "Lo sentimos, el estudiante no cumple con los requisitos para el programa de intercambio.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejercicio 1")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PANTALLA EJERCICIO N1",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Text("Edad: "),
            TextField(
              controller: _edadController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),

            Text("Nivel de Inglés: "),
            DropdownButton<String>(
              value: _nivelIngles,
              onChanged: (String? newValue) {
                setState(() {
                  _nivelIngles = newValue!;
                });
              },
              items:
                  <String>[
                    "Básico",
                    "Intermedio",
                    "Avanzado",
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
            ),
            SizedBox(height: 16),

            Text("Promedio de calificaciones: "),
            TextField(
              controller: _promedioController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),

            FilledButton(
              onPressed: evaluarEstudiante,
              child: Text("Evaluar estudiante"),
            ),
            SizedBox(height: 16),

            Text(
              _resultado,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30),

            //BOTON DE RETROCEDER A LA PÁGINA INICIAL
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
