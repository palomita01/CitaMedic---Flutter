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
        title: Text("Editor"),
      ),
      body: Container(
        height: 570,
        padding: EdgeInsets.all(70.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _motivoController,
                  style: TextStyle(fontSize: 12.0),
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Motivo',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                TextField(
                  controller: _diaController,
                  style: TextStyle(fontSize: 12.0),
                  decoration: InputDecoration(
                    icon: Icon(Icons.list),
                    labelText: 'Dia',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                TextField(
                  controller: _horaController,
                  style: TextStyle(fontSize: 12.0),
                  decoration: InputDecoration(
                    icon: Icon(Icons.access_time),
                    labelText: 'Hora',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                TextField(
                  controller: _comentarioController,
                  style: TextStyle(fontSize: 12.0),
                  decoration: InputDecoration(
                    icon: Icon(Icons.message),
                    labelText: 'Comentario',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                FlatButton(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
