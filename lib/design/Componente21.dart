import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class Componente21 extends StatelessWidget {
  Componente21({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 205.0, 24.0),
          size: Size(205.0, 24.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: const Color(0xff707070)),
            ),
          ),
        ),
      ],
    );
  }
}
