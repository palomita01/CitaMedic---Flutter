import 'package:flutter/material.dart';
import 'getturn1.dart';
import 'model/Producto.dart';

void main() => runApp(GetTurn());

class GetTurn extends StatelessWidget {
  //inicializo los datos
  final TextEditingController _controllerNyA = TextEditingController();
  final TextEditingController _controllerDNI = TextEditingController();
  final TextEditingController _controllerProv = TextEditingController();
  final TextEditingController _controllerDeleg = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerTel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solicitá tu turno"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            // formularios y sus atributos
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                  controller: _controllerNyA,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Nombre y Apellido',
                    // suffixIcon: Icon(Icons.accessibility),
                    // icon: Icon(Icons.account_circle),
                  ),
                  keyboardType: TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                  controller: _controllerDNI,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'DNI',
                    // suffixIcon: Icon(Icons.accessibility),
                    // icon: Icon(Icons.account_circle),
                  ),
                  keyboardType: TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                  controller: _controllerProv,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Provincia',
                    // suffixIcon: Icon(Icons.accessibility),
                    // icon: Icon(Icons.account_circle),
                  ),
                  keyboardType: TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                  controller: _controllerDeleg,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Delegacion',
                    // suffixIcon: Icon(Icons.accessibility),
                    // icon: Icon(Icons.account_circle),
                  ),
                  keyboardType: TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                  controller: _controllerEmail,
                  decoration: InputDecoration(
                    // esto es una decoracion
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'E-mail',
                    // suffixIcon: Icon(Icons.accessibility),
                    // icon: Icon(Icons.account_circle),
                  ),
                  keyboardType: TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                  controller: _controllerTel,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Teléfono',
                    // suffixIcon: Icon(Icons.accessibility),
                    // icon: Icon(Icons.account_circle),
                  ),
                  keyboardType: TextInputType.text),
            ),
            // me devuelve los datos que pido luego de presionar el boton
            RaisedButton(
                color: Colors.lightBlue,
                textColor: Colors.white,
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
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return GetTurn1();
                    },
                  ));
                })
          ],
        ),
      ),
    );
  }
}
