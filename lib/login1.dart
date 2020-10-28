import 'package:flutter/material.dart';
import 'model/Producto1.dart';
import 'package:proyecto_citamedic/pages/powerPage.dart';
import 'package:proyecto_citamedic/pages/userPage.dart';
import 'package:http/http.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _controllerUsuario = TextEditingController();
  final TextEditingController _controllerContrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Iniciando Sesión"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                      controller: _controllerUsuario,
                      decoration: InputDecoration(labelText: 'Usuario'),
                      keyboardType: TextInputType.text),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                      controller: _controllerContrasena,
                      decoration: InputDecoration(labelText: 'Contraseña'),
                      keyboardType: TextInputType.text),
                ),
                RaisedButton(
                    child: Text('Iniciar Sesión'),
                    onPressed: () {
                      final String user = _controllerUsuario.text;
                      final int pass = int.tryParse(_controllerContrasena.text);

                      final Producto1 productoNuevo = Producto1(user, pass);

                      print(productoNuevo);
                    })
              ],
            ),
          ),
        ));
  }
}
