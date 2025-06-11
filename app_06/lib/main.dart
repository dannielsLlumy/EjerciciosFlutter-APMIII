import 'package:app_06/screens/ejercicio00N10Screen.dart';
import 'package:app_06/screens/ejercicio00N1Screen.dart';
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
      //BOTONES EJERCICIOS
      body: Padding(
        padding: EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            btnEjercicio00N1(context),
            btnEjercicio00N2(context),
          ],),)
    );
  }

  Widget btnEjercicio00N1(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio1()),
          ),
      child: Text("Ejercicio 00 - N1"),
    ));
  }

  Widget btnEjercicio00N2(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio10()),
          ),
      child: Text("Ejercicio 00 - N10"),
    ));
  }
}
