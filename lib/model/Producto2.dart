class Producto2 {
  final String motivo;
  final String dia;
  final int hora;
  final String coment;

  Producto2(
    this.motivo,
    this.dia,
    this.hora,
    this.coment,
  );
  @override
  String toString() {
    return 'Producto2{motivo: $motivo, dia: $dia, hora: $hora, coment: $coment}';
  }
}
