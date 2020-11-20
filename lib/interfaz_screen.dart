import 'package:flutter/material.dart';

import 'cancelturn.dart';
import 'getturn.dart';
import 'getturn1.dart';

class InterfazApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugShowCheckedModeBanner: false,
      // home: Scaffold(

      appBar: AppBar(
        title: Text(
          'Eliga dentro de estas dos opciones',
        ),
      ),
      body: ListView(
        children: <Widget>[
          //botones y sus atributos
          Button(
            child: RaisedButton(
              child: Text(
                'Solicitar Turno',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        title: Text("Seleccione"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(height: 25.0),
                            Text("Elíja una opción"),
                            // SizedBox(height: 25.0),
                          ],
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Para mi"),
                            onPressed: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return GetTurn1();
                            })),
                          ),
                          FlatButton(
                              child: Text("Para alguien mas"),
                              onPressed: () =>
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return GetTurn();
                                    },
                                  ))),
                        ],
                      );
                    });

                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return GetTurn();
                //   },
                // ));
              },
              color: Colors.blue,
              textColor: Colors.white,
            ),
            text: 'Pide tu turno aquí!',
          ),
          Button(
            child: RaisedButton(
              child: Text(
                'Cancelar Turno',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CancelTurn();
                    },
                  ),
                );
              },
              color: Colors.blue,
              textColor: Colors.white,
            ),
            text: 'Cancele su turno aquí!',
          ),
          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Codigo del turno: 573893'),
                  subtitle: Text(
                      'Dia: Miercoles\nHora: 15:30\nMotivo: Me apreté un huevo con la puerta'),
                  leading: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
    // );
  }
}

//utilizo esta clase para definir atributos asi solo despues lo llamo
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
