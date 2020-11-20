import 'package:flutter/material.dart';
import 'model/Producto3.dart';

void main() => runApp(CancelTurn());

class CancelTurn extends StatelessWidget {
  final TextEditingController _controllerNroturn = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cancele su turno"),
      ),
      //formulario
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
            // me devuelve los datos que pido luego de presionar el boton
            RaisedButton(
                color: Colors.lightBlue,
                textColor: Colors.white,
                child: Text('Finalizar'),
                onPressed: () {
                  final int nroturn = int.tryParse(_controllerNroturn.text);

                  final Producto3 productoNuevo = Producto3(nroturn);
                  print(productoNuevo);
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
