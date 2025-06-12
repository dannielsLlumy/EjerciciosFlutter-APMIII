import 'package:app_06/screens/ejercicio00N10Screen.dart';
import 'package:app_06/screens/ejercicio00N11Screen.dart';
import 'package:app_06/screens/ejercicio00N12Screen.dart';
import 'package:app_06/screens/ejercicio00N3Screen.dart';
import 'package:app_06/screens/ejercicio00N1Screen.dart';
import 'package:app_06/screens/ejercicio00N2Screen.dart';
import 'package:app_06/screens/ejercicio00N4Screen.dart';
import 'package:app_06/screens/ejercicio00N5Screen.dart';
import 'package:app_06/screens/ejercicio00N6Screen.dart';
import 'package:app_06/screens/ejercicio00N7Screen.dart';
import 'package:app_06/screens/ejercicio00N8Screen.dart';
import 'package:app_06/screens/ejercicio00N9Screen.dart';

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
        child: Wrap(
          spacing: 12.0,
          runSpacing: 12.0,
          children: [
            btnEjercicio00N1(context),
            btnEjercicio00N2(context),
            btnEjercicio00N3(context),
            btnEjercicio00N4(context),
            btnEjercicio00N5(context),
            btnEjercicio00N6(context),
            btnEjercicio00N7(context),
            btnEjercicio00N8(context),
            btnEjercicio00N9(context),
            btnEjercicio00N10(context),
            btnEjercicio00N11(context),
            btnEjercicio00N12(context),
          ],
        ),
      ),
    );
  }

  //EJERCICIO NUMERO 1
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

  //EJERCICIO NUMERO 2
  Widget btnEjercicio00N2(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio2()),
          ),
      child: Text("Ejercicio 00 - N2"),
    ));
  }

  //EJERCICIO NUMERO 3

  Widget btnEjercicio00N3(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio3()),
          ),
      child: Text("Ejercicio 00 - N3"),
    ));
  }

  //EJERCICIO NUMERO 4
  Widget btnEjercicio00N4(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio4()),
          ),
      child: Text("Ejercicio 00 - N4"),
    ));
  }

  //EJERCICIO NUMERO 5
  Widget btnEjercicio00N5(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio5()),
          ),
      child: Text("Ejercicio 00 - N5"),
    ));
  }

  //EJERCICIO NUMERO 6
  Widget btnEjercicio00N6(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio6()),
          ),
      child: Text("Ejercicio 00 - N6"),
    ));
  }

  //EJERCICIO NUMERO 7
  Widget btnEjercicio00N7(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio7()),
          ),
      child: Text("Ejercicio 00 - N7"),
    ));
  }

  //EJERCICIO NUMERO 8
  Widget btnEjercicio00N8(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio8()),
          ),
      child: Text("Ejercicio 00 - N8"),
    ));
  }

  //EJERCICIO NUMERO 9
  Widget btnEjercicio00N9(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio9()),
          ),
      child: Text("Ejercicio 00 - N9"),
    ));
  }

  //EJERCICIO NUMERO 10
  Widget btnEjercicio00N10(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio10()),
          ),
      child: Text("Ejercicio 00 - N10"),
    ));
  }

  //EJERCICIO NUMERO 11
  Widget btnEjercicio00N11(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio11()),
          ),
      child: Text("Ejercicio 00 - N11"),
    ));
  }

  //EJERCICIO NUMERO 12
  Widget btnEjercicio00N12(context) {
    return (FilledButton.tonal(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ejercicio12()),
          ),
      child: Text("Ejercicio 00 - N12"),
    ));
  }
}
