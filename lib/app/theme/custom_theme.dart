import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class CustomTheme with ChangeNotifier {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: CustomColors.primary300,
      backgroundColor: CustomColors.secondary900,
      splashColor: CustomColors.primary300,
      scaffoldBackgroundColor: CustomColors.secondary900,
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: GoogleFonts.poppinsTextTheme(),
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: CustomColors.primary300,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(color: CustomColors.secondary500),
        floatingLabelStyle: TextStyle(
          color: CustomColors.primary300,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: CustomColors.secondary500),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: CustomColors.primary300),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: CustomColors.error),
        ),
      ),
    );
  }
}
