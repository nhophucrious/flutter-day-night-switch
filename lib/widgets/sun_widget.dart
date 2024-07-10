import 'package:day_night_switcher/utils/constants.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class SunWidget extends StatelessWidget {
  const SunWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Constants.sunColor,
          boxShadow: Constants.sunShadows),
    );
  }
}
