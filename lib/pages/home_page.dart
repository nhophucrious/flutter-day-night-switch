import 'package:day_night_switcher/widgets/clouds_backs_widget.dart';
import 'package:day_night_switcher/utils/constants.dart';
import 'package:day_night_switcher/widgets/day_night_switch_widget.dart';
import 'package:day_night_switcher/widgets/rays_widget.dart';
import 'package:day_night_switcher/widgets/sun_widget.dart';
import 'package:day_night_switcher/widgets/clouds_widget.dart';
import 'package:day_night_switcher/widgets/moon_widget.dart';
import 'package:day_night_switcher/widgets/stars_widget.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day night switcher")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  color: Constants.canvasColor),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Text("0.8 scale, original duration"),
                  DayNightSwitch(),
                  SizedBox(height: 20),
                  Text("0.5 scale, 200ms duration"),
                  DayNightSwitch(
                      scale: 0.5, duration: Duration(milliseconds: 200)),
                  SizedBox(height: 20),
                  Text("0.1 scale, 300ms duration"),
                  DayNightSwitch(
                      scale: 0.1, duration: Duration(milliseconds: 300)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
