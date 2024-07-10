import 'package:day_night_switcher/utils/constants.dart';
import 'package:flutter/material.dart';

class CloudsBacksWidget extends StatelessWidget {
  const CloudsBacksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // a list to define clouds backs offsets and sizes
    const List<dynamic> offsetsAndSize = [
      {"offset": Offset(0, 98), "size": 82.0},
      {"offset": Offset(58, 124), "size": 82.0},
      {"offset": Offset(85, 103), "size": 82.0},
      {"offset": Offset(128, 101), "size": 82.0},
      {"offset": Offset(175, 82), "size": 82.0},
      {"offset": Offset(213, 107), "size": 82.0},
      {"offset": Offset(224, 76), "size": 82.0},
      {"offset": Offset(260, 49), "size": 82.0},
      {"offset": Offset(289, 0), "size": 88.0},
    ];
    return Opacity(
      opacity: Constants.cloudsBacksOpacity,
      child: SizedBox(
        width: 377,
        height: 206,
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
      ),
    );
  }
}
