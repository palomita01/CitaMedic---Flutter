import 'package:flutter/material.dart';

void main() {
  runApp(InterfazApp());
}

class InterfazApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Eliga dentro de estas dos opciones',
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Button(
              child: RaisedButton(
                child: Text(
                  'Pide Turno',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  print('Apretado con éxito!');
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
              text: 'Pide tu turno aquí!',
            ),
            Button(
              child: RaisedButton(
                child: Text(
                  'Cancela Turno',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  print('Apretado con éxito!');
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
              text: 'Cancele su turno aquí!',
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Widget child;
  final String text;

  const Button({
    Key key,
    @required this.child,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              this.child,
              SizedBox(
                height: 10,
              ),
              Text(
                this.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
