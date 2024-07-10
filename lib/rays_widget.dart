import 'package:flutter/material.dart';
import 'package:day_night_switcher/constants.dart';

class RaysWidget extends StatelessWidget {
  const RaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const List<double> raySizes = [328.0, 260.0, 184.0];
    return Stack(alignment: AlignmentDirectional.center, children: [
      for (var i = 0; i < raySizes.length; i++)
        Container(
          width: raySizes[i],
          height: raySizes[i],
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Constants.rayColor),
        ),
    ]);
  }
}
