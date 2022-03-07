import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class AppTheme {
  static LinearGradient brandLinearGradient = LinearGradient(
    colors: [
      brandColor1,
      brandColor2,
    ],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  static LinearGradient secondaryLinearGradient = LinearGradient(
    colors: [
      secondaryColor1,
      secondaryColor2,
    ],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  static Color brandColor1 = const Color(0xff92A3FD);
  static Color brandColor2 = const Color(0xff9DCEFF);
  static Color secondaryColor1 = const Color(0xffC58BF2);
  static Color secondaryColor2 = const Color(0xffEEA4CE);
  static Color blackColor = const Color(0xff1D1617);
  static Color grayColor1 = const Color(0xff7B6F72);
  static Color grayColor2 = const Color(0xffADA4A5);
  static Color grayColor3 = const Color(0xffDDDADA);
  static Color borderColor = const Color(0xffF7F8F8);

  // static ThemeData theme = Get.isDarkMode ? lightTheme : lightTheme;

  static ThemeData themeData = ThemeData(
    primaryColor: brandColor2,
    primaryColorDark: brandColor1,
    dividerColor: Colors.transparent,
    textTheme: TextTheme(
      headline1: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 26,
      ),
      headline2: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 24,
      ),
      headline3: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 22,
      ),
      headline4: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 20,
      ),
      subtitle1: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 18,
      ),
      subtitle2: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 16,
      ),
      bodyText1: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 14,
      ),
      bodyText2: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 12,
      ),
      caption: GoogleFonts.poppins(
        color: blackColor,
        fontSize: 10,
      ),
    ),
  );
}
