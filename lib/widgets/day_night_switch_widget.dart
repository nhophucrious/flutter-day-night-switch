import 'package:day_night_switcher/widgets/clouds_backs_widget.dart';
import 'package:day_night_switcher/utils/constants.dart';
import 'package:day_night_switcher/widgets/rays_widget.dart';
import 'package:day_night_switcher/widgets/sun_widget.dart';
import 'package:day_night_switcher/widgets/clouds_widget.dart';
import 'package:day_night_switcher/widgets/moon_widget.dart';
import 'package:day_night_switcher/widgets/stars_widget.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class DayNightSwitch extends StatefulWidget {
  final double scale;
  final Duration duration;
  const DayNightSwitch(
      {super.key,
      this.scale = 0.8,
      this.duration = Constants.defaultAnimationDuration});

  @override
  State<DayNightSwitch> createState() => _DayNightSwitchState();
}

class _DayNightSwitchState extends State<DayNightSwitch> {
  bool _isDayTime = true;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: (MediaQuery.of(context).size.width * widget.scale) / 369,
      child: Container(
        width: 369,
        height: 145,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(200), boxShadow: [
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
            duration: widget.duration,
            curve: Constants.sprung,
            width: 369,
            height: 145,
            decoration: BoxDecoration(
                color: _isDayTime ? Constants.skyDay : Constants.skyNight,
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
                  duration: widget.duration,
                  curve: Constants.sprung,
                  left: _isDayTime ? -91 : 132,
                  top: -92,
                  child: const RaysWidget(),
                ),
                AnimatedPositioned(
                  duration: widget.duration,
                  curve: Constants.sprung,
                  left: -4,
                  top: _isDayTime ? 1 : 168,
                  child: const CloudsBacksWidget(),
                ),
                AnimatedPositioned(
                  duration: widget.duration,
                  curve: Constants.sprung,
                  left: 10,
                  top: _isDayTime ? 10 : 177,
                  child: const CloudsWidget(),
                ),
                AnimatedPositioned(
                  duration: widget.duration,
                  curve: Constants.sprung,
                  left: 43,
                  top: _isDayTime ? -144 : 23,
                  child: const StarsWidget(),
                ),
                AnimatedPositioned(
                  duration: widget.duration,
                  curve: Constants.sprung,
                  left: _isDayTime ? 6 : 235,
                  top: 8,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isDayTime = !_isDayTime;
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(217),
                        child: AnimatedContainer(
                          alignment: _isDayTime
                              ? Alignment.center
                              : Alignment.centerLeft,
                          width: _isDayTime ? 132 : 124,
                          duration: widget.duration,
                          curve: Curves.easeInOut,
                          height: 131,
                          decoration: BoxDecoration(
                            boxShadow: const [], // MARK: - Explicit empty list to avoid inner shadow problem
                            borderRadius: BorderRadius.circular(217),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              const SunWidget(),
                              AnimatedPositioned(
                                duration: widget.duration,
                                curve: Constants.sprung,
                                left: _isDayTime ? 161 : 0,
                                top: 0,
                                child: const MoonWidget(),
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
    );
  }
}
