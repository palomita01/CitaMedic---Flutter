import 'package:flutter/material.dart';

import 'getturn.dart';
import 'getturn1.dart';

class InterfazApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        borderRadius: BorderRadius.circular(20.0),
                      ),
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
                          child: Text("Para alguien más"),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return GetTurn();
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              color: Colors.blue,
              textColor: Colors.white,
            ),
            text: 'Pide tu turno aquí!',
          ),
          Divider(
            color: Colors.black,
          ),
          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                // obtenerDatos(),
                createListTile(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget createListTile(BuildContext context) {
    return ListTile(
      title: Text('Codigo del turno: 573893'),
      subtitle: Text('Dia: \nHora: \nMotivo: '),
      leading: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        splashColor: Colors.red,
        onPressed: () {
          showDialog(
            context: context,
            child: AlertDialog(
              title: Text("Seguro que desea cancelar el turno?"),
              content: Text("Codigo de Turno: 1234"),
              actions: <Widget>[
                Divider(),
                FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Cancelar"),
                ),
                FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Aceptar"),
                )
              ],
            ),
          );
        },
      ),
    );
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
