import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StylesApp {
  /// [subtitle1] ==> 16.sp SFUIText font
  static final TextStyle subtitle1 = TextStyle(
    fontFamily: 'SFUIText',
    fontSize: SizesApp.sp16,
  );

  /// [openSans] ==> 16.sp openSans font
  static final TextStyle body1 = GoogleFonts.openSans(
    fontSize: SizesApp.sp16,
  );

  /// [headline6] ==> 20.sp openSans font1
  static final TextStyle headline6 = GoogleFonts.openSans(
    fontSize: SizesApp.sp20,
  );
}
