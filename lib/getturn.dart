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
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          // formularios y sus atributos
          //Textfield de Nombre y Apellido
          createTextField("Nombre y Apellido", Icon(Icons.account_circle),
              TextInputType.text, _controllerNyA),
          //TextField de DNi
          createTextField("DNI", Icon(Icons.assignment_ind),
              TextInputType.number, _controllerDNI),

          //TextField de Provincia
          createTextField("Provincia", Icon(Icons.list), TextInputType.text,
              _controllerProv),

          //TextField de Delegación
          createTextField("Delegación", Icon(Icons.location_on),
              TextInputType.text, _controllerDeleg),

          //TextField de Email
          createTextField("E-mail", Icon(Icons.alternate_email),
              TextInputType.emailAddress, _controllerEmail),

          //TextField de Teléfono
          createTextField("Teléfono", Icon(Icons.phone_android),
              TextInputType.phone, _controllerTel),
          // me devuelve los datos que pido luego de presionar el boton
          createRaisedButton(context)
        ],
      ),
    );
  }

  Widget createRaisedButton(BuildContext context) {
    return RaisedButton(
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return GetTurn1();
            },
          ),
        );
      },
    );
  }

  Widget createTextField(String label, Icon icon, TextInputType type,
      TextEditingController controller) {
    int length;
    if (label == "DNI") {
      length = 8;
    } else {
      length = null;
    }
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          labelText: label,
          icon: icon,
        ),
        keyboardType: type,
        maxLength: length,
      ),
    );
  }
}
