import 'package:flutter/material.dart';
import 'package:proyecto_citamedic/model/Producto2.dart';
import 'model/Producto2.dart';
import 'getturn.dart';

void main() => runApp(GetTurn1());

class GetTurn1 extends StatelessWidget {
  //agrego los datos
  final TextEditingController _controllerMotivo = TextEditingController();
  final TextEditingController _controllerDia = TextEditingController();
  final TextEditingController _controllerHora = TextEditingController();
  final TextEditingController _controllerComent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solicitá tu turno"),
      ),
      //definido los formularios en conjunto con sus atributos

      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          //TextField de "Motivo"
          createTextField("Motivo", Icon(Icons.add_comment), TextInputType.text,
              _controllerMotivo),
          //TextField de "Día"
          createTextField("Día", Icon(Icons.calendar_today),
              TextInputType.datetime, _controllerDia),
          //TextField de "Hora"
          createTextField("Hora", Icon(Icons.access_time), TextInputType.text,
              _controllerHora),
          //TextField de "Comentarios"
          createTextField("Comentarios", Icon(Icons.comment),
              TextInputType.text, _controllerComent),

          RaisedButton(
            color: Colors.lightBlue,
            textColor: Colors.white,
            child: Text('Finalizar'),
            onPressed: () {
              //llamo los datos
              final String motivo = _controllerMotivo.text;
              final String dia = _controllerDia.text;
              final hora = int.tryParse(_controllerHora.text);
              final String coment = _controllerComent.text;

              final Producto2 productoNuevo =
                  Producto2(motivo, dia, hora, coment);

              print(productoNuevo);
            },
          ),
        ],
      ),
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
