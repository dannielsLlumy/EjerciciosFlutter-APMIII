import 'package:flutter/material.dart';

// 11. Se requiere un programa que determine si un estudiante es apto para una becа
// universitaria. El programa solicitará al usuario su promedio de calificaciones y el ingreso
// mensual de su familia. Si el promedio de calificaciones es mayor o igual a 9 y el ingreso
// mensual de la familia es menor a 3000 dólares, el programa imprimirá "El estudiante es
// elegible para la beca". De lo contrario, imprimirá "Lo siento, el estudiante no es elegible
// para la bеса".
class Ejercicio2 extends StatelessWidget {
  const Ejercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejercicio 2")),
      body: Column(
        children: [
          Text("PANTALLA EJERCICIO N2"),
          BackButton(),
          FilledButton(
            onPressed: ()=> Navigator.pop(context), 
          child: Text("Retroceder"))
        ],
      ),
    );
  }
}