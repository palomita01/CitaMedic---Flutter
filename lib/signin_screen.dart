import 'package:flutter/material.dart';
import 'package:proyecto_citamedic/constants.dart';
import 'package:proyecto_citamedic/input_page.dart';
import 'interfaz_screen.dart';
// import 'register.dart';

class SignInScreen extends StatelessWidget {
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //defino el fondo de pantalla
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background_app.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          //defino los textos en conjunto con su tamaño y alineación
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(7.8),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Inicia Sesión",
                        style: Theme.of(context).textTheme.display1,
                      ),
                      RaisedButton(
                        color: Colors.lightBlue,
                        textColor: Colors.white,
                        child: Text("Registrate"),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InputPage(),
                          ),
                        ),
                      )
                    ],
                  ),
                  //agrego el icono con su tamaño y alineacion en conjunto con el formualario
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(6),
                          child: Icon(
                            Icons.alternate_email,
                            color: kPrimaryColor,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                            ),
                            onChanged: (valor) {
                              _email = valor;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  //agrego el icono con su tamaño y alineacion en conjunto con el formualario
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Contraseña",
                          ),
                          obscureText: true,
                          onChanged: (valor) {
                            _password = valor;
                          },
                        ),
                      )
                    ],
                  ),
                  //en toda esta estructura incluyen los iconos y sus atributos
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.blue.withOpacity(.5),
                            ),
                          ),
                          child: Icon(
                            Icons.android,
                            color: Colors.blue.withOpacity(.5),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.blue.withOpacity(.5),
                            ),
                          ),
                          child: Icon(
                            Icons.chat,
                            color: Colors.blue.withOpacity(.5),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: FloatingActionButton(
                            child: Icon(Icons.arrow_forward),
                            onPressed: () {
                              if (_email == "" || _password == "") {
                                showDialog(
                                  context: context,
                                  child: AlertDialog(
                                    title: Text("Complete los formularios"),
                                    content: Text("Completa los formularios"),
                                    actions: <Widget>[
                                      FlatButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                        child: Text("Aceptar"),
                                      )
                                    ],
                                  ),
                                );
                              } else {
                                print('Presionado');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InterfazApp(),
                                  ),
                                );
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
