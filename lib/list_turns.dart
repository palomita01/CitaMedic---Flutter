import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';
import 'turn_information.dart';
import 'turn_screen.dart';
import 'model/turns.dart';

class ListViewTurn extends StatefulWidget {
  @override
  _ListViewTurnState createState() => _ListViewTurnState();
}

final turnReference = FirebaseDatabase.instance.reference().child('turno');

class _ListViewTurnState extends State<ListViewTurn> {
  List<Turno> items;
  StreamSubscription<Event> _onTurnAddedSubscription;
  StreamSubscription<Event> _onTurnChangeSubscription;

  @override
  void initState() {
    super.initState();
    items = new List();
    _onTurnAddedSubscription = turnReference.onChildAdded.listen(_onTurnAdded);
    _onTurnChangeSubscription =
        turnReference.onChildChanged.listen(_onTurnUpdate);
  }

  void dispose() {
    super.dispose();
    _onTurnAddedSubscription.cancel();
    _onTurnChangeSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Turnos'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          itemBuilder: (context, position) {
            return Column(
              children: <Widget>[
                Divider(height: 7.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: Text(
                          '${items[position].motivo}',
                        ),
                        subtitle: Text(
                          '${items[position].comentarios}',
                        ),
                        leading: Text('${items[position].dia}'),
                        onTap: () => _navigateToTurnInformation(
                            context, items[position]),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () =>
                          _deleteTurn(context, items[position], position),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.blue,
                      ),
                      onPressed: () =>
                          _navigateToTurn(context, items[position]),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightBlue,
        onPressed: () => _createNewTurn(context),
      ),
    );
  }

  void _onTurnAdded(Event event) {
    setState(() {
      items.add(new Turno.fromSnapshot(event.snapshot));
    });
  }

  void _onTurnUpdate(Event event) {
    var oldTurnValue =
        items.singleWhere((turno) => turno.codigo == event.snapshot.key);
    setState(() {
      items[items.indexOf(oldTurnValue)] =
          new Turno.fromSnapshot(event.snapshot);
    });
  }

  void _deleteTurn(BuildContext context, Turno turno, int position) async {
    await turnReference.child(turno.codigo).remove().then((_) {
      setState(() {
        items.removeAt(position);
      });
    });
  }

  void _navigateToTurnInformation(BuildContext context, Turno turno) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TurnScreen(turno)),
    );
  }

  void _navigateToTurn(BuildContext context, Turno turno) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TurnInformation(turno)),
    );
  }

  void _createNewTurn(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TurnScreen(
          Turno(null, '', '', '', ''),
        ),
      ),
    );
  }
}
