import 'package:day_night_switcher/constants.dart';
import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // a list to define star offsets and sizes, now using scale factors
    const List<Map<String, dynamic>> offsetsAndSize = [
      {"offset": Offset(136, 52), "size": 6.0},
      {"offset": Offset(50, 0), "size": 16.0},
      {"offset": Offset(8, 31), "size": 6.0},
      {"offset": Offset(45, 58), "size": 10.0},
      {"offset": Offset(101, 6), "size": 8.0},
      {"offset": Offset(80, 32), "size": 4.0},
      {"offset": Offset(0, 77), "size": 16.0},
      {"offset": Offset(86, 73), "size": 18.0}
    ];

    return SizedBox(
      width: 142.0,
      height: 93.0,
      child: Stack(
        children: [
          for (var i = 0; i < offsetsAndSize.length; i++)
            Positioned(
              left: offsetsAndSize[i]["offset"].dx,
              top: offsetsAndSize[i]["offset"].dy,
              child: Container(
                width: offsetsAndSize[i]["size"],
                height: offsetsAndSize[i]["size"],
                decoration: const ShapeDecoration(
                  color: Constants.starColor,
                  shape: StarBorder(
                    points: 4.00,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
