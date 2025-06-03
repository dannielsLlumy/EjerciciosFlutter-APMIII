import 'package:app_06/screens/ejercicio1Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EjerciciosApp());
}

class EjerciciosApp extends StatelessWidget {
  const EjerciciosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Cuerpo());
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicios de la Actividad"),
        actions: [
          IconButton.outlined(
            onPressed: () => (),
            icon: Icon(Icons.propane_tank_sharp),
          ),
        ],
      ),
      body: Column(children: [btnEjercicio1(context)]),
    );
  }

  Widget btnEjercicio1(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio1()),
          ),
      child: Text("Ejercicio 1"),
    ));
  }
}
