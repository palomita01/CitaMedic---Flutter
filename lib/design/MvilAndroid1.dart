import 'package:flutter/material.dart';
import 'bglogin.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'Componente41.dart';
import 'Componente21.dart';

class MvilAndroid1 extends StatelessWidget {
  MvilAndroid1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(18.0, 110.0),
            child:
                // Adobe XD layer: 'bg-login' (component)
                SizedBox(
              width: 324.0,
              height: 76.0,
              child: bglogin(),
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 50.0),
            child: BlendMask(
              blendMode: BlendMode.srcOver,
              region: Offset(18.0, 50.0) & Size(140.0, 27.0),
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
          ),
          Transform.translate(
            offset: Offset(18.5, 85.5),
            child: SizedBox(
              width: 324.0,
              height: 3.0,
              child: Componente41(),
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 207.0),
            child: Text(
              'Datos personales',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xff506d9a),
                height: 1.4666666666666666,
                shadows: [
                  Shadow(
                    color: const Color(0x59000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 332.0),
            child: SizedBox(
              width: 205.0,
              height: 24.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 383.0),
            child: SizedBox(
              width: 205.0,
              height: 24.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 428.0),
            child: SizedBox(
              width: 205.0,
              height: 26.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 480.0),
            child: SizedBox(
              width: 205.0,
              height: 27.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 362.0),
            child: Text(
              'Provincia',
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
            offset: Offset(58.0, 407.0),
            child: Text(
              'Delegación',
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
            offset: Offset(72.0, 389.0),
            child: Text(
              '<< SELECCIONE >>',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 9,
                color: const Color(0x9c707070),
                height: 2.4444444444444446,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(72.0, 436.0),
            child: Text(
              '<< SELECCIONE >>',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 9,
                color: const Color(0x9c707070),
                height: 2.4444444444444446,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 532.0),
            child: SizedBox(
              width: 205.0,
              height: 26.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(56.0, 512.0),
            child: Text(
              'Teléfono',
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
            offset: Offset(180.0, 583.0),
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
            offset: Offset(191.0, 592.0),
            child: Text(
              'SIGUIENTE >>',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 10,
                color: const Color(0xffffffff),
                height: 2.2,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 312.0),
            child: Text(
              'DNI',
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
            offset: Offset(58.0, 283.0),
            child: SizedBox(
              width: 205.0,
              height: 24.0,
              child: Componente21(),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 262.0),
            child: Text(
              'Nombre y Apellido',
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
            offset: Offset(58.0, 460.0),
            child: Text(
              'E-mail',
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
            offset: Offset(18.0, 50.0),
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
          Transform.translate(
            offset: Offset(-1.0, 0.0),
            child: Container(
              width: 360.0,
              height: 640.0,
              decoration: BoxDecoration(
                color: const Color(0x1a506d9a),
                border: Border.all(width: 1.0, color: const Color(0x1a707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
