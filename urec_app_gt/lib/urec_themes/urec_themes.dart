import 'package:flutter/material.dart';

class UrecThemes {

  //primary color constants -> should make up 70% of display
  static const Color cougarCrimson = Color.fromRGBO(166, 15, 45, 1);
  static const Color cougarGray = Color.fromRGBO(77, 77, 77, 1);

  //secondary color constants -> should make up 20-30% of display
  static const Color cougarRed = Color.fromRGBO(202, 18, 55, 1);
  static const Color cougarBlack = Color.fromRGBO(0, 0, 0, 1);
  static const Color cougarOffGray = Color.fromRGBO(0, 0, 0, 0.3);
  static const Color cougarWhite = Color.fromRGBO(255, 255, 255, 1);

  //accent color constants -> should make up at most 10% of display
  static const Color cougarAutumn = Color.fromRGBO(225, 103, 39, 1);
  static const Color cougarGoldfinch = Color.fromRGBO(243, 231, 0, 1);
  static const Color cougarVineyard = Color.fromRGBO(170, 220, 36, 1);
  static const Color cougarPacificSky = Color.fromRGBO(91, 195, 245, 1);
  static const Color cougarMidnight = Color.fromRGBO(0, 45, 97, 1);

  //error color -> if you see this annoying color something is broke >:(
  static const Color errHighlighter = Color.fromRGBO(255, 247, 0, 1); // -> ugly highlighter color, keep an eye out!

  //note that this is one theme, but if we need more (like for light/dark mode) a list object would have to made to hold diff versions of the themes. Ez todo
  ThemeData themeData = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      primary: cougarCrimson,
      onPrimary: cougarBlack,
      secondary: cougarRed,
      onSecondary: cougarBlack,
      surface: cougarWhite,
      onSurface: cougarBlack,
      brightness: Brightness.light,
      error: errHighlighter,
      onError: cougarBlack,

    ),
    appBarTheme: const AppBarTheme(color: cougarCrimson),
    textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
      overlayColor: cougarBlack,
      backgroundColor: cougarGray,
      foregroundColor: cougarRed,
      )),
    scaffoldBackgroundColor: cougarWhite,
    //textTheme: TextTheme(//todo).apply(bodyColor: cougarBlack),
    
  );
}