import 'package:flutter/material.dart';

class RaysWidget extends StatelessWidget {
  const RaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center, children: [
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
    ]);
  }
}
