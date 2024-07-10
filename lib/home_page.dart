// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:day_night_switcher/clouds_backs_widget.dart';
import 'package:day_night_switcher/constants.dart';
import 'package:day_night_switcher/rays_widget.dart';
import 'package:day_night_switcher/sun_widget.dart';
import 'package:day_night_switcher/clouds_widget.dart';
import 'package:day_night_switcher/moon_widget.dart';
import 'package:day_night_switcher/stars_widget.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDay = true;

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
                color: const Color(0xffdddddd),
                // color: Colors.grey,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  Transform.scale(
                    scale: (MediaQuery.of(context).size.width * 0.8) / 369,
                    child: Container(
                      width: 369,
                      height: 145,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, -3),
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.72),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                            BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 12,
                                offset: const Offset(0, -1),
                                inset: true),
                            BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 9,
                                offset: const Offset(1, 5),
                                inset: true),
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: AnimatedContainer(
                          duration: Constants.defaultAnimationDuration,
                          curve: Curves.easeInOut,
                          width: 369,
                          height: 145,
                          decoration: BoxDecoration(
                              color: _isDay
                                  ? const Color(0xff2384ba)
                                  : const Color(0xff2f2f2f),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(0, -3),
                                ),
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.72),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(0, 4),
                                ),
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 12,
                                    offset: const Offset(0, -1),
                                    inset: true),
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 9,
                                    offset: const Offset(1, 5),
                                    inset: true),
                              ]),
                          child: Stack(
                            children: [
                              AnimatedPositioned(
                                duration: Constants.defaultAnimationDuration,
                                curve: Constants.sprung,
                                left: _isDay ? -91 : 132,
                                top: -92,
                                child: const RaysWidget(),
                              ),
                              AnimatedPositioned(
                                duration: Constants.defaultAnimationDuration,
                                curve: Constants.sprung,
                                left: -4,
                                top: _isDay ? 1 : 168,
                                child: CloudsBacksWidget(),
                              ),
                              AnimatedPositioned(
                                duration: Constants.defaultAnimationDuration,
                                curve: Constants.sprung,
                                left: 10,
                                top: _isDay ? 10 : 177,
                                child: const CloudsWidget(),
                              ),
                              AnimatedPositioned(
                                duration: Constants.defaultAnimationDuration,
                                curve: Constants.sprung,
                                left: 43,
                                top: _isDay ? -144 : 23,
                                child: const StarsWidget(),
                              ),
                              AnimatedPositioned(
                                duration: Constants.defaultAnimationDuration,
                                curve: Constants.sprung,
                                left: _isDay ? 6 : 235,
                                top: 8,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isDay = !_isDay;
                                      });
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(217),
                                      child: AnimatedContainer(
                                        alignment: _isDay
                                            ? Alignment.center
                                            : Alignment.centerLeft,
                                        width: _isDay ? 132 : 124,
                                        duration:
                                            Constants.defaultAnimationDuration,
                                        curve: Curves.easeInOut,
                                        height: 131,
                                        decoration: BoxDecoration(
                                          boxShadow: [], // MARK: - Explicit empty list to avoid inner shadow problem
                                          borderRadius:
                                              BorderRadius.circular(217),
                                        ),
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          alignment: Alignment.center,
                                          children: [
                                            SunWidget(),
                                            AnimatedPositioned(
                                              duration: Constants
                                                  .defaultAnimationDuration,
                                              curve: Constants.sprung,
                                              left: _isDay ? 161 : 0,
                                              top: 0,
                                              child: MoonWidget(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
