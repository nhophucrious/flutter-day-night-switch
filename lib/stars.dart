import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  final double width;
  final double height;
  const StarsWidget({
    Key? key,
    this.width = 142.0,
    this.height = 93.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Original design size
    const double originalWidth = 142.0;
    const double originalHeight = 93.0;

    // Calculate scale factors
    final double scaleX = width / originalWidth;
    final double scaleY = height / originalHeight;

    // a list to define star offsets and sizes, now using scale factors
    final List<Map<String, dynamic>> offsetsAndSize = [
      {"offset": Offset(136 * scaleX, 52 * scaleY), "size": 6.0 * scaleX},
      {"offset": Offset(50 * scaleX, 0 * scaleY), "size": 16.0 * scaleX},
      {"offset": Offset(8 * scaleX, 31 * scaleY), "size": 6.0 * scaleX},
      {"offset": Offset(45 * scaleX, 58 * scaleY), "size": 10.0 * scaleX},
      {"offset": Offset(101 * scaleX, 6 * scaleY), "size": 8.0 * scaleX},
      {"offset": Offset(80 * scaleX, 32 * scaleY), "size": 4.0 * scaleX},
      {"offset": Offset(0 * scaleX, 77 * scaleY), "size": 16.0 * scaleX},
      {"offset": Offset(86 * scaleX, 73 * scaleY), "size": 18.0 * scaleX},
    ];

    return Container(
      width: width,
      height: height,
      // decoration: BoxDecoration(color: Colors.amber[300]),
      color: Colors.transparent,
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
                  color: Colors.white,
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
