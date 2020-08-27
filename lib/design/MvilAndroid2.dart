import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'Componente41.dart';
import 'Componente21.dart';

class MvilAndroid2 extends StatelessWidget {
  MvilAndroid2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(18.0, 55.0),
            child: SizedBox(
              width: 140.0,
              height: 27.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 140.0, 27.0),
                    size: Size(140.0, 27.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text(
                      'Solicitá tu turno',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color: const Color(0xff506d9a),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 91.0),
            child: SizedBox(
              width: 324.0,
              height: 3.0,
              child: Componente41(),
            ),
          ),
          Transform.translate(
            offset: Offset(54.0, 136.0),
            child: Text(
              'Motivo',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xff506d9a),
                height: 1.8333333333333333,
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
            offset: Offset(54.0, 161.0),
            child: SizedBox(
              width: 205.0,
              height: 28.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(68.0, 169.0),
            child: Text(
              '+ TIPOS',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 9,
                color: const Color(0x9c707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(54.0, 209.0),
            child: Text(
              'Día',
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
            offset: Offset(54.0, 229.0),
            child: SizedBox(
              width: 205.0,
              height: 28.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(60.0, 237.0),
            child: Text(
              '<< SELECCIONE >>',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 9,
                color: const Color(0x9c707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(50.0, 302.0),
            child: SizedBox(
              width: 209.0,
              height: 28.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(54.0, 277.0),
            child: Text(
              'Hora',
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
            offset: Offset(60.0, 308.0),
            child: Text(
              '<< SELECCIONE >>',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 9,
                color: const Color(0x9c707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(50.0, 348.0),
            child: Text(
              'Comentarios',
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
            offset: Offset(50.0, 373.0),
            child: SizedBox(
              width: 209.0,
              height: 98.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(173.0, 511.0),
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
            offset: Offset(188.0, 516.0),
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
