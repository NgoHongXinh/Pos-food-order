import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: Colors.pink,
    );
  }

  static TextStyle logoName() {
    return GoogleFonts.sofia(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.pink,
    );
  }

  static TextStyle headerInfoTextStyle(
      {double fontSize = 25, Color color = Colors.white}) {
    return GoogleFonts.audiowide(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle infoTextStyle(
      {double fontSize = 18, Color color = Colors.white}) {
    return GoogleFonts.sofia(
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle normalTextStyle() {
    return GoogleFonts.saira(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
}
