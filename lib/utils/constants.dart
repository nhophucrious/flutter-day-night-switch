import 'dart:ui';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:sprung/sprung.dart';

class Constants {
  // Animation curves
  static final Sprung sprung =
      Sprung.custom(damping: 6, stiffness: 16, mass: 1.0, velocity: 4);

  static const Duration defaultAnimationDuration = Duration(milliseconds: 2000);

  // canvas background color (figma frame background color)
  static const Color canvasColor = Color(0xFFDDDDDD);

  // Sun and moon colors
  static const Color sunColor = Color(0xFFFFD600);
  static const Color moonColor = Color(0xFFBFBFBF);
  static const Color moonCraterColor = Color(0xFF949494);

  // Sun shadows
  static const List<BoxShadow> sunShadows = [
    // Drop shadow 1 - #000000 25%
    BoxShadow(
      color: Color(0x40000000),
      spreadRadius: 0,
      blurRadius: 3,
      offset: Offset(3, 3),
    ),
    // Drop shadow 2 - #000000 25%
    BoxShadow(
      color: Color(0x40000000),
      spreadRadius: 0,
      blurRadius: 4,
      offset: Offset(3, 2),
    ),
    // Inner shadow 1 - #525252 18%
    BoxShadow(
      color: Color(0x2E525252),
      spreadRadius: 0,
      blurRadius: 4,
      offset: Offset(0, -4),
      inset: true,
    ),
    // Inner shadow 2 - #FEF7E7 60%
    BoxShadow(
      color: Color(0x99FEF7E7),
      spreadRadius: 0,
      blurRadius: 4,
      offset: Offset(3, 4),
      inset: true,
    ),
  ];

  // Moon shadows
  static const List<BoxShadow> moonShadows = [
    // Drop shadow 1 - #000000 25%
    BoxShadow(
      color: Color(0x40000000),
      spreadRadius: 0,
      blurRadius: 3,
      offset: Offset(3, 3),
    ),
    // Drop shadow 2 - #000000 25%
    BoxShadow(
      color: Color(0x40000000),
      spreadRadius: 0,
      blurRadius: 4,
      offset: Offset(3, 2),
    ),
    // Inner shadow 1 - #525252 18%
    BoxShadow(
      color: Color(0x2E525252),
      spreadRadius: 0,
      blurRadius: 4,
      offset: Offset(0, -4),
      inset: true,
    ),
    // Inner shadow 2 - #FFFFFF 60%
    BoxShadow(
      color: Color(0x99FFFFFF),
      spreadRadius: 0,
      blurRadius: 4,
      offset: Offset(3, 4),
      inset: true,
    ),
  ];

  // Moon crater shadows
  static const List<BoxShadow> moonCraterShadows = [
    // Inner shadow: #000000 25%
    BoxShadow(
      color: Color(0x40000000),
      spreadRadius: 0,
      blurRadius: 4,
      offset: Offset(0, 1),
      inset: true,
    ),
  ];

  // Cloud colors and opacity
  static const Color cloudColor = Color(0xFFFFFFFF);
  static const double cloudsBacksOpacity = 0.5;

  // Sky colors
  static const Color skyDay = Color(0xFF2384BA);
  static const Color skyNight = Color(0xFF2F2F2F);

  // Star color
  static const Color starColor = Color(0xFFFFFFFF);

  // Ray color - 10% opacity
  static const Color rayColor = Color(0x1AFFFFFF);
}
