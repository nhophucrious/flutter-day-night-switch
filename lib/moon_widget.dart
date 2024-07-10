import 'package:day_night_switcher/constants.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class MoonWidget extends StatelessWidget {
  const MoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // a list to define moon craters offsets and sizes
    const List<dynamic> offsetsAndSize = [
      {"offset": Offset(23, 48), "size": 46.0},
      {"offset": Offset(76, 47), "size": 27.0},
      {"offset": Offset(57, 20), "size": 16.0},
    ];
    return Container(
      width: 120,
      height: 120,
      decoration: const BoxDecoration(
        color: Constants.moonColor,
        shape: BoxShape.circle,
        boxShadow: Constants.moonShadows,
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
                    color: Constants.moonCraterColor,
                    shape: BoxShape.circle,
                    boxShadow: Constants.moonCraterShadows),
              ),
            ),
        ],
      ),
    );
  }
}
