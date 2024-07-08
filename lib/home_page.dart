import 'package:day_night_switcher/celestial_object.dart';
import 'package:day_night_switcher/clouds.dart';
import 'package:day_night_switcher/moon_widget.dart';
import 'package:day_night_switcher/stars.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day night switcher")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Container(
                    width: 369,
                    height: 145,
                    decoration: BoxDecoration(
                        color: Color(0xff2384ba),
                        borderRadius: BorderRadius.circular(200)),
                  ),
                  CelestialObjectWidget()
                ],
              ),
              Container(
                  width: 16,
                  height: 16,
                  decoration: const ShapeDecoration(
                    color: Colors.red,
                    shape: StarBorder(
                      points: 4.00,
                    ),
                  )),
              StarsWidget(),
              const SizedBox(height: 40),
              CloudsWidget(),
              MoonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
