import 'package:flutter/material.dart';
import 'model/Producto.dart';
import 'login1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _controllerNyA = TextEditingController();
  final TextEditingController _controllerDNI = TextEditingController();
  final TextEditingController _controllerProv = TextEditingController();
  final TextEditingController _controllerDeleg = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerTel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Solicitá tu turno"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextField(
                      controller: _controllerNyA,
                      decoration:
                          InputDecoration(labelText: 'Nombre y Apellido'),
                      keyboardType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextField(
                      controller: _controllerDNI,
                      decoration: InputDecoration(labelText: 'DNI'),
                      keyboardType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextField(
                      controller: _controllerProv,
                      decoration: InputDecoration(labelText: 'Provincia'),
                      keyboardType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextField(
                      controller: _controllerDeleg,
                      decoration: InputDecoration(labelText: 'Delegación'),
                      keyboardType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                      controller: _controllerEmail,
                      decoration: InputDecoration(labelText: 'E-mail'),
                      keyboardType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                      controller: _controllerTel,
                      decoration: InputDecoration(labelText: 'Teléfono'),
                      keyboardType: TextInputType.text),
                ),
                RaisedButton(
                    child: Text('Siguiente'),
                    onPressed: () {
                      final String nya = _controllerNyA.text;
                      final int dni = int.tryParse(_controllerDNI.text);
                      final String prov = _controllerProv.text;
                      final String deleg = _controllerDeleg.text;
                      final dynamic email = _controllerEmail.text;
                      final int tel = int.tryParse(_controllerTel.text);

                      final Producto productoNuevo =
                          Producto(nya, dni, prov, deleg, email, tel);

                      print(productoNuevo);
                    })
              ],
            ),
          ),
        ));
  }
}
