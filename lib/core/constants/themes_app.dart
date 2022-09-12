import 'package:flutter/material.dart';

import 'colors_app.dart';

class ThemesApp {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme.light().copyWith(primary: ColorsApp.primary),
  );
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.amber,
  );
}
