import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Componente41 extends StatelessWidget {
  Componente41({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 324.0, 3.0),
          size: Size(324.0, 3.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: SvgPicture.string(
            _svg_33d96b,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_33d96b =
    '<svg viewBox="0.0 0.0 324.0 3.0" ><path  d="M 0 0 L 324 3" fill="none" stroke="#506d9a" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
