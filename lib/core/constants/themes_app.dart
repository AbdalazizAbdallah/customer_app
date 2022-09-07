import 'package:flutter/material.dart';

class ThemesApp {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
  );
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.amber,
  );
}
