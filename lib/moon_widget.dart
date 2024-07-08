import 'package:flutter/material.dart';

class MoonWidget extends StatelessWidget {
  const MoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<dynamic> offsetsAndSize = [
      {"offset": Offset(23, 52), "size": 46.0},
      {"offset": Offset(76, 51), "size": 27.0},
      {"offset": Offset(57, 40), "size": 16.0},
    ];
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xffbfbfbf),
        shape: BoxShape.circle,
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
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
