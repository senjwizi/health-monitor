// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

//FFFAEC
const Color colorLightTheme = Color(0xFFFFFAEC);
const Color colorBlue = Color(0xFF6588E4);
const Color colorBlueDark = Color.fromARGB(255, 67, 96, 168);
const Color colorBlueAlpha = Color(0xbb6588E4);
const Color colorDarkTheme = Color.fromARGB(255, 63, 59, 65);
const Color colorYellow = Color(0xFFFABF7C);
const Color colorPink = Color(0xFFF275B5); //319399
const Color colorRed = Color(0xFFE46570);
const Color colorGreen = Color(0xFF319399);
const Color colorWhite = Colors.white;
const Color colorDarkGrey = Color(0xFF121212);
const Color colorDarkHeader = Color(0xFF424242);

var colorsArray = [colorBlue, colorRed, colorYellow, colorPink, colorGreen];

class Themes {
  static final light = ThemeData(
      scaffoldBackgroundColor: colorWhite,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        backgroundColor: colorWhite,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: colorDarkTheme),
        iconTheme: IconThemeData(color: colorDarkTheme),
      ));

  static final newDark = ThemeData(
      scaffoldBackgroundColor: colorDarkTheme, brightness: Brightness.dark);

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: colorDarkTheme,
      surfaceVariant: colorDarkTheme,
      background: colorDarkTheme,
      surface: colorDarkTheme,
    ),
    useMaterial3: true,
  );
}

TextStyle get headerStyle {
  return GoogleFonts.cormorantGaramond(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.grey[800]));
}

TextStyle get subHeadingStyle {
  return GoogleFonts.fredoka(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Get.isDarkMode ? Colors.grey[400] : Colors.grey));
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[600]));
}

TextStyle get vocabularyTextStyle {
  return GoogleFonts.cormorant(
      textStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.normal, color: colorWhite));
}

TextStyle get vocabularyWordTextStyle {
  return GoogleFonts.cormorantGaramond(
      textStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w800, color: colorWhite));
}
