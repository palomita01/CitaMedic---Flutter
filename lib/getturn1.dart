import 'package:flutter/material.dart';
import 'package:proyecto_citamedic/model/Producto2.dart';
import 'model/Producto2.dart';
import 'login1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _controllerMotivo = TextEditingController();
  final TextEditingController _controllerDia = TextEditingController();
  final TextEditingController _controllerHora = TextEditingController();
  final TextEditingController _controllerComent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Solicitá tu turno"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                      controller: _controllerMotivo,
                      decoration: InputDecoration(labelText: 'Motivo'),
                      keyboardType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                      controller: _controllerDia,
                      decoration: InputDecoration(labelText: 'Día'),
                      keyboardType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                      controller: _controllerHora,
                      decoration: InputDecoration(labelText: 'Hora'),
                      keyboardType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                      controller: _controllerComent,
                      decoration: InputDecoration(labelText: 'Comentarios'),
                      keyboardType: TextInputType.text),
                ),
                RaisedButton(
                    child: Text('Finalizar'),
                    onPressed: () {
                      final String motivo = _controllerMotivo.text;
                      final String dia = _controllerDia.text;
                      final hora = int.tryParse(_controllerHora.text);
                      final String coment = _controllerComent.text;

                      final Producto2 productoNuevo =
                          Producto2(motivo, dia, hora, coment);

                      print(productoNuevo);
                    })
              ],
            ),
          ),
        ));
  }
}
