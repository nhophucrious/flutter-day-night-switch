import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class MoonWidget extends StatelessWidget {
  final double scale;
  const MoonWidget({Key? key, this.scale = 1.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Adjusted offsets and sizes with scale
    final List<dynamic> offsetsAndSize = [
      {"offset": Offset(23 * scale, 48 * scale), "size": 46.0 * scale},
      {"offset": Offset(76 * scale, 47 * scale), "size": 27.0 * scale},
      {"offset": Offset(57 * scale, 20 * scale), "size": 16.0 * scale},
    ];
    return Container(
      width: 120 * scale,
      height: 120 * scale,
      decoration: BoxDecoration(
        color: const Color(0xffbfbfbf),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(3, 3),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(3, 2),
          ),
          BoxShadow(
              color: Color(0xff525252).withOpacity(0.18),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, -4),
              inset: true),
          BoxShadow(
              color: Colors.white.withOpacity(0.6),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(3, 4),
              inset: true),
        ],
      ),
      child: Stack(
        children: [
          for (var i = 0; i < offsetsAndSize.length; i++)
            Positioned(
              left: offsetsAndSize[i]["offset"].dx,
              top: offsetsAndSize[i]["offset"].dy,
              child: Container(
                width: offsetsAndSize[i]["size"],
                height: offsetsAndSize[i]["size"],
                decoration: const BoxDecoration(
                    color: Color(0xff949494), shape: BoxShape.circle),
              ),
            ),
        ],
      ),
    );
  }
}
