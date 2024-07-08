import 'package:flutter/material.dart';

class CelestialObjectWidget extends StatelessWidget {
  const CelestialObjectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: 328,
          height: 328,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
        ),
        Container(
          width: 260,
          height: 260,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
        ),
        Container(
          width: 184,
          height: 184,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.white.withOpacity(0.1)),
        ),
        Container(
          width: 132,
          height: 132,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Color(0xffffd600),
              color: Color(0xffffd600),
              boxShadow: [
                // Drop shadow 1
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(3, 3),
                ),
                // Drop shadow 2
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(3, 2),
                ),
              ]),
        ),
      ],
    );
  }
}
