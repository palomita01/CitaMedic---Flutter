import 'package:firebase_database/firebase_database.dart';

class Usuario {
  String _id;
  String _nombre;
  String _dni;
  String _email;
  String _provincia;
  String _contrasena;

  Usuario(
    this._id,
    this._nombre,
    this._dni,
    this._email,
    this._provincia,
    this._contrasena,
  );

  Usuario.map(dynamic obj) {
    this._id = obj['id'];
    this._nombre = obj['nombre'];
    this._contrasena = obj['contraseña'];
    this._dni = obj['dni'];
    this._email = obj['email'];
    this._provincia = obj['provincia'];
  }

  String get id => _id;
  String get nombre => _nombre;
  String get contrasena => _contrasena;
  String get dni => _dni;
  String get email => _email;
  String get provincia => _provincia;

  Usuario.fromSnapshot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _dni = snapshot.value['dni'].key;
    _nombre = snapshot.value['nombre'];
    _contrasena = snapshot.value['contraseña'];
    _email = snapshot.value['email'];
    _provincia = snapshot.value['provincia'];
  }
}
