import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.pink;
  static const String fontFamily = 'PermanentMarker';
  static const Color accentColor = Colors.yellow;
  static const Brightness brightness = Brightness.dark;

  static ThemeData get appTheme => ThemeData(
    primaryColor: primaryColor,
    fontFamily: fontFamily,
    accentColor: accentColor,
    brightness: brightness,
  );
}