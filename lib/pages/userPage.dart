import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Página Usuarios'),
        ),
        body: new Column(
          children: <Widget>[new Text('Estamos en la página de usuarios')],
        ));
  }
}
