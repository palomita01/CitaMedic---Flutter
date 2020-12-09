import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'model/turns.dart';

class TurnInformation extends StatefulWidget {
  final Turno turno;
  TurnInformation(this.turno);
  @override
  _TurnInformationState createState() => _TurnInformationState();
}

final turnReference = FirebaseDatabase.instance.reference().child('turno');

class _TurnInformationState extends State<TurnInformation> {
  List<Turno> items;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Informacion del turno')),
      body: Container(
        height: 400.0,
        padding: EdgeInsets.all(20.0),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                new Text(
                  'Codigo: ${widget.turno.codigo}',
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Divider(),
                new Text(
                  'Codigo: ${widget.turno.motivo}',
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Divider(),
                new Text(
                  'Codigo: ${widget.turno.dia}',
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Divider(),
                new Text(
                  'Codigo: ${widget.turno.hora}',
                  style: TextStyle(fontSize: 18.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
