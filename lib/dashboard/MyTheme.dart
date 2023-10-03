import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static Color lightRed = const Color.fromRGBO(255, 170, 175, 0.28);
  static Color lightBlue = const Color.fromRGBO(145, 226, 251, 0.25);
  static Color lightOrange = const Color.fromRGBO(248, 176, 152, 0.28);
  static Color lightPurple = const Color.fromRGBO(156, 39, 176, 0.13);
  static Color lightGreen = const Color.fromRGBO(92, 224, 165, 0.23);
  static Color textCardio = const Color.fromRGBO(145, 34, 43, 1);
  static Color textPharmacy =const Color.fromRGBO(53, 140, 167, 1);
  static Color textOptom =const Color.fromRGBO(20, 86, 56, 1);
  static Color textNeuro =const Color.fromRGBO(156, 39, 176, 1);
  static Color textDerm=const Color.fromRGBO(220, 80, 33, 1);
  static Color searchborder=const Color.fromRGBO(191, 180, 180, 0.77);
  static Color darkblue=const Color.fromRGBO(22, 81, 120, 1);
  static Color upcomingcolor=const Color.fromRGBO(21, 83, 108, 1);
  static Color greyShade=const Color.fromRGBO(21, 83, 108, 1);
  static Color green=const Color.fromRGBO(68, 174, 79, 0.41);

  static Color buttonColor = const Color.fromRGBO(168, 117, 16, 1);
  static TextStyle regularTextStyle(
      {FontStyle? fontStyle,
        Color? color,
        double? textSize,
        FontWeight? fontWeight,
        double? letterSpacing,
        double? spacing}) {
    return GoogleFonts.portLligatSans(
      color: color ?? Colors.black,
      fontSize: textSize ?? 15,
      fontWeight: fontWeight ?? FontWeight.normal,
      letterSpacing: letterSpacing,
    );
  }




}