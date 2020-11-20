import 'package:flutter/material.dart';
import 'package:proyecto_citamedic/model/Producto2.dart';
import 'model/Producto2.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  controller: _controllerMotivo,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Motivo',
                    // suffixIcon: Icon(Icons.accessibility),
                    icon: Icon(Icons.add_comment),
                  ),
                  keyboardType: TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  controller: _controllerDia,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Día',
                    // suffixIcon: Icon(Icons.accessibility),
                    icon: Icon(Icons.calendar_today),
                  ),
                  keyboardType: TextInputType.datetime),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  controller: _controllerHora,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Hora',
                    // suffixIcon: Icon(Icons.accessibility),
                    icon: Icon(Icons.access_time),
                  ),
                  keyboardType: TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                  controller: _controllerComent,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Comentarios',
                    // suffixIcon: Icon(Icons.accessibility),
                    icon: Icon(Icons.comment),
                  ),
                  keyboardType: TextInputType.text),
            ),
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
                })
          ],
        ),
      ),
    );
  }
}
