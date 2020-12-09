import 'package:firebase_database/firebase_database.dart';

class Turno {
  String _codigo;
  String _dia;
  String _hora;
  String _motivo;
  String _comentarios;

  Turno(
    this._codigo,
    this._dia,
    this._hora,
    this._motivo,
    this._comentarios,
  );

  Turno.map(dynamic obj) {
    this._codigo = obj['codigo'];
    this._dia = obj['dia'];
    this._hora = obj['hora'];
    this._motivo = obj['motivo'];
    this._comentarios = obj['comentarios'];
  }

  String get codigo => _codigo;
  String get dia => _dia;
  String get hora => _hora;
  String get motivo => _motivo;
  String get comentarios => _comentarios;

  Turno.fromSnapshot(DataSnapshot snapshot) {
    _codigo = snapshot.key;
    _dia = snapshot.value['dia'];
    _hora = snapshot.value['hora'];
    _motivo = snapshot.value['motivo'];
    _comentarios = snapshot.value['comentarios'];
  }
}
