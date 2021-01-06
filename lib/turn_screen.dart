import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'model/turns.dart';

class TurnScreen extends StatefulWidget {
  final Turno turno;
  TurnScreen(this.turno);
  @override
  _TurnScreenState createState() => _TurnScreenState();
}

final turnReference = FirebaseDatabase.instance.reference().child('turno');

class _TurnScreenState extends State<TurnScreen> {
  List<Turno> items;

  TextEditingController _motivoController;
  TextEditingController _diaController;
  TextEditingController _horaController;
  TextEditingController _comentarioController;

  void initState() {
    _motivoController = new TextEditingController(text: widget.turno.motivo);
    _diaController = new TextEditingController(text: widget.turno.dia);
    _horaController = new TextEditingController(text: widget.turno.hora);
    _comentarioController =
        new TextEditingController(text: widget.turno.comentarios);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Solicitar Turno"),
      ),
      body: ListView(
        children: <Widget>[
          createTextField('Motivo', Icon(Icons.person), TextInputType.text,
              _motivoController),
          Divider(),
          createTextField(
              'Dia', Icon(Icons.list), TextInputType.text, _diaController),
          Divider(),
          createTextField('Hora', Icon(Icons.access_time), TextInputType.text,
              _horaController),
          Divider(),
          createTextField('Comentarios', Icon(Icons.message),
              TextInputType.text, _comentarioController),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              color: Colors.lightBlue,
              textColor: Colors.white,
              child: (widget.turno.codigo != null)
                  ? Text('Actualizar')
                  : Text('Agregar'),
              onPressed: () {
                if (widget.turno.codigo != null) {
                  turnReference.child(widget.turno.codigo).set(
                    {
                      'motivo': _motivoController.text,
                      'hora': _horaController.text,
                      'dia': _diaController.text,
                      'comentarios': _comentarioController.text,
                    },
                  ).then(
                    (_) {
                      Navigator.pop(context);
                    },
                  );
                } else {
                  turnReference.push().set(
                    {
                      'motivo': _motivoController.text,
                      'hora': _horaController.text,
                      'dia': _diaController.text,
                      'comentarios': _comentarioController.text,
                    },
                  ).then(
                    (_) {
                      Navigator.pop(context);
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget createTextField(String label, Icon icon, TextInputType type,
      TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
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
      ),
    );
  }
}
