import 'package:day_night_switcher/utils/constants.dart';
import 'package:flutter/material.dart';

class CloudsWidget extends StatelessWidget {
  const CloudsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // a list to define clouds offsets and sizes
    const List<dynamic> offsetsAndSize = [
      {"offset": Offset(0, 96), "size": 82.0},
      {"offset": Offset(57, 119), "size": 82.0},
      {"offset": Offset(97, 109), "size": 82.0},
      {"offset": Offset(125, 112), "size": 82.0},
      {"offset": Offset(174, 93), "size": 82.0},
      {"offset": Offset(212, 102), "size": 82.0},
      {"offset": Offset(250, 86), "size": 82.0},
      {"offset": Offset(287, 54), "size": 82.0},
      {"offset": Offset(304, 0), "size": 82.0},
    ];
    return SizedBox(
      width: 386,
      height: 201,
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
                    color: Constants.cloudColor,
                    shape: BoxShape.circle,
                  )),
            ),
        ],
      ),
    );
  }
}
