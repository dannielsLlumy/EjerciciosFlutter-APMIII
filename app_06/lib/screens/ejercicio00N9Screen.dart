// 9. Se busca un programa que determine si una persona puede acceder a un descuento en
// la compra de un producto. El programa solicitará al usuario su edad y el precio del
// producto. Si la persona tiene más de 60 años o es menor de 18 años, y el precio del
// producto es mayor a 100 dólares, el programa imprimirá "La persona es elegible para un
// descuento del 10%". De lo contrario, imprimirá "Lo siento, la persona no es elegible
// para el descuento".

import 'package:flutter/material.dart';

class Ejercicio9 extends StatefulWidget {
  const Ejercicio9({super.key});

  @override
  State<Ejercicio9> createState() => _Ejercicio9State();
}

class _Ejercicio9State extends State<Ejercicio9> {
  final edadCtrl = TextEditingController();
  final precioCtrl = TextEditingController();
  String _resultado = "";

  void verificarDescuento() {
    int? edad = int.tryParse(edadCtrl.text);
    double? precio = double.tryParse(precioCtrl.text);

    if (edad == null || precio == null) {
      setState(() => _resultado = "Por favor ingresa datos válidos.");
      return;
    }

    if ((edad < 18 || edad > 60) && precio > 100) {
      setState(() => _resultado =
          "La persona es elegible para un descuento del 10%.");
    } else {
      setState(() =>
          _resultado = "Lo siento, la persona no es elegible para el descuento.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Descuento")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: edadCtrl, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: "Edad")),
            TextField(controller: precioCtrl, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: "Precio del producto")),
            SizedBox(height: 12),
            FilledButton(onPressed: verificarDescuento, child: Text("Verificar")),
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
