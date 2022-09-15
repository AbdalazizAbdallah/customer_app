import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

import 'colors_app.dart';

class ThemesApp {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorsApp.white,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsApp.white,
      titleTextStyle: StylesApp.headline6.copyWith(
        color: ColorsApp.black87,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: IconThemeData(
        color: ColorsApp.primary,
      ),
      elevation: 0,
      centerTitle: true,
    ),
    colorScheme: const ColorScheme.light().copyWith(primary: ColorsApp.primary),
  );
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorsApp.black87,
    primarySwatch: Colors.amber,
    appBarTheme: AppBarTheme(
      color: ColorsApp.white,
      elevation: 0,
      centerTitle: true,
    ),
  );
}
