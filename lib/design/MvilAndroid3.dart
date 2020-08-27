import 'package:flutter/material.dart';
import 'Componente41.dart';
import 'Componente21.dart';

class MvilAndroid3 extends StatelessWidget {
  MvilAndroid3({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(20.0, 56.0),
            child: Text(
              'Cancelá tu turno',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff506d9a),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 97.0),
            child: SizedBox(
              width: 324.0,
              height: 3.0,
              child: Componente41(),
            ),
          ),
          Transform.translate(
            offset: Offset(55.0, 278.0),
            child: Text(
              'Número de turno',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xff506d9a),
                shadows: [
                  Shadow(
                    color: const Color(0x69000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 302.0),
            child: SizedBox(
              width: 205.0,
              height: 24.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(172.0, 365.0),
            child: Container(
              width: 86.0,
              height: 31.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
                color: const Color(0xff506d9a),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xc7040404),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(189.0, 373.0),
            child: Text(
              'FINALIZAR',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: 360.0,
            height: 640.0,
            decoration: BoxDecoration(
              color: const Color(0x1a506d9a),
              border: Border.all(width: 1.0, color: const Color(0x1a707070)),
            ),
          ),
        ],
      ),
    );
  }
}
