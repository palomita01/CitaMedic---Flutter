import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'model/users.dart';

class RegisterScreen extends StatefulWidget {
  final Usuario usuario;
  RegisterScreen(this.usuario);
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

final userReference = FirebaseDatabase.instance.reference().child('usuario');

class _RegisterScreenState extends State<RegisterScreen> {
  List<Usuario> items;
  TextEditingController _dniController;
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;

  void initState() {
    _nameController = new TextEditingController(text: widget.usuario.nombre);
    _emailController = new TextEditingController(text: widget.usuario.email);
    _dniController = new TextEditingController(text: widget.usuario.dni);
    _passwordController =
        new TextEditingController(text: widget.usuario.contrasena);
  }

  List<String> _provincias = [
    "Provincia",
    "Buenos Aires",
    "Catamarca",
    "Chaco",
    "Córdoba",
    "Corrientes",
    "Entre Ríos",
    "Formosa",
    "Jujuy",
    "La Pampa",
    "La Rioja",
    "Mendoza",
    "Misiones",
    "Neuquén",
    "Rio Negro",
    "Salta",
    "San Juan",
    "San Luis",
    "Santa Cruz",
    "Santa Fe",
    'Santiago del Estero',
    "Tierra del Fuego",
    "Tucumán",
    "Tierra del Fuego",
  ];

  String _provinciaSeleccionada = 'Provincia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: <Widget>[
          _crearNombre(),
          Divider(),
          _crearDNI(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearDropdown(),
          Divider(),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          // _crearPersona(),
          FlatButton(
            color: Colors.lightBlue,
            textColor: Colors.white,
            child: Text('Registrarse'),
            onPressed: () {
              if (widget.usuario.id != null || widget.usuario.dni != null) {
                print('Presionado 1');
                userReference.child(widget.usuario.dni).set(
                  {
                    'nombre': _nameController.text,
                    'contraseña': _passwordController.text,
                    'provincia': _provinciaSeleccionada,
                    'email:': _emailController.text,
                    'dni': _dniController.text,
                  },
                ).then(
                  (_) {
                    Navigator.pop(context);
                  },
                );
              } else {
                userReference.push().set(
                  {
                    'nombre': _nameController.text,
                    'contraseña': _passwordController.text,
                    'provincia': _provinciaSeleccionada,
                    'email': _emailController.text,
                    'dni': _dniController.text,
                  },
                ).then(
                  (_) {
                    Navigator.pop(context);
                  },
                );
              }
            },
          ),
          FlatButton(
            child: Text('Cancelar'),
            color: Colors.lightBlue,
            textColor: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  Widget _crearNombre() {
    return TextField(
      controller: _nameController,
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        // counter: Text("Letras ${_nombre.length}"),
        labelText: 'Nombre(s) y Apelldo(s)',
        hintText: 'Ejemplo Pepito Muñoz',
        icon: Icon(Icons.account_circle),
      ),
    );
  }

  //
  Widget _crearEmail() {
    return TextField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'ejemplo@dominio.com',
        labelText: 'Email',
        icon: Icon(Icons.email),
      ),
    );
  }

  Widget _crearDNI() {
    return TextField(
      controller: _dniController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: '00000000',
        labelText: 'DNI',
        icon: Icon(Icons.assignment_ind),
      ),
    );
  }

  Widget _crearPassword() {
    return TextField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Password',
        labelText: 'Password',
        icon: Icon(Icons.lock),
      ),
    );
  }

/*
  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Fecha de Nacimiento',
        labelText: 'Fecha de Nacimiento',
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      firstDate: new DateTime(1960),
      initialDate: new DateTime.now(),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'AR'),
    );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }
*/

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();
    _provincias.forEach((opcionSeleccionada) {
      lista.add(DropdownMenuItem(
        child: Text(opcionSeleccionada),
        value: opcionSeleccionada,
      ));
    });

    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _provinciaSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _provinciaSeleccionada = opt;
              });
            },
          ),
        )
      ],
    );
  }
}
