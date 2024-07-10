import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class SunWidget extends StatelessWidget {
  const SunWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xffffd600),
          boxShadow: [
            // Drop shadow 1
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(3, 3),
            ),
            // Drop shadow 2
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(3, 2),
            ),
            // Inner shadow 1
            BoxShadow(
              color: Color(0xff522204).withOpacity(0.18),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, -4),
              inset: true,
            ),
            // Inner shadow 2
            BoxShadow(
              color: Color(0xffFEF7E7).withOpacity(0.60),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(3, 4),
              inset: true,
            ),
          ]),
    );
  }
}
