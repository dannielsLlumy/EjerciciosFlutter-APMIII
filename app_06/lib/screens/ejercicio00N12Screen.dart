// 12. Se necesita un programa para evaluar si un aspirante a un puesto de trabajo es apto
// para una entrevista. El programa solicitará al usuario su edad y la cantidad de años de
// experiencia laboral. Si el aspirante tiene entre 25 y 35 años, y al menos 3 años de
// experiencia laboral, el programa imprimirá "El aspirante puede ser seleccionado para
// una entrevista". En caso contrario, imprimirá "Lo siento, el aspirante no cumple con los
// requisitos para la entrevista".

import 'package:flutter/material.dart';

class Ejercicio12 extends StatefulWidget{
  const Ejercicio12({super.key});

  @override
  State <Ejercicio12> createState() => _Ejercicio12State();
}

class _Ejercicio12State extends State<Ejercicio12> {
  final TextEditingController _edadController = TextEditingController();
  final TextEditingController _experienciaController = TextEditingController();

  String _resultado = "";

  void evaluarEntrevista() {
    int? edad = int.tryParse(_edadController.text);
    int? experiencia = int.tryParse(_experienciaController.text);

    if (edad == null || experiencia == null) {
      setState(() {
        _resultado = "Por favor, ingrese datos válidos.";
      });
      return;
    }

    if (edad >= 25 && edad <= 35 && experiencia >= 3) {
      setState(() {
        _resultado = "El aspirante puede ser seleccionado para una entrevista.";
      });
    } else {
      setState(() {
        _resultado =
            "Lo siento, el aspirante no cumple con los requisitos para la entrevista.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Evaluación Entrevista Laboral")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _edadController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Edad del aspirante"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _experienciaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Años de experiencia"),
            ),
            SizedBox(height: 20),
            FilledButton(onPressed: evaluarEntrevista, child: Text("Evaluar")),
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