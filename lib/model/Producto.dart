class Producto {
  final String nya;
  final int dni;
  final String prov;
  final String deleg;
  final dynamic email;
  final int tel;
  Producto(
    this.nya,
    this.dni,
    this.prov,
    this.deleg,
    this.email,
    this.tel,
  );
  @override
  String toString() {
    return 'Producto{nya: $nya,dni: $dni, prov: $prov, deleg: $deleg, email: $email, tel: $tel}';
  }
}
