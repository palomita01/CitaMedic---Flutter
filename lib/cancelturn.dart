import 'package:flutter/material.dart';
import 'model/Producto3.dart';
import 'login1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _controllerNroturn = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Cancele su turno"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: TextField(
                      controller: _controllerNroturn,
                      decoration: InputDecoration(labelText: 'Nro turno'),
                      keyboardType: TextInputType.text),
                ),
                RaisedButton(
                    child: Text('Finalizar'),
                    onPressed: () {
                      final int nroturn = int.tryParse(_controllerNroturn.text);

                      final Producto3 productoNuevo = Producto3(nroturn);

                      print(productoNuevo);
                    })
              ],
            ),
          ),
        ));
  }
}
