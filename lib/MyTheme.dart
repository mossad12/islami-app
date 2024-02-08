import 'package:flutter/material.dart';

class Mytheme {
  static Color blackcolor = Color(0xff242424);
  static Color darkblackcolor = Color(0xff141a2e);
  static Color primarylightcolor = Color(0xffB7935F);
  static Color primarydarkcolor = Color(0xfffacc1d);
  static Color whitecolor = Color(0xffFFFFFF);
  static ThemeData lightmode = ThemeData(
    primaryColor: primarylightcolor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackcolor,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primarylightcolor,
      selectedItemColor: blackcolor,
    ),
    colorScheme: ColorScheme(
      background: whitecolor,
      brightness: Brightness.light,
      error: whitecolor,
      onBackground: whitecolor,
      onError: whitecolor,
      onPrimary: whitecolor,
      primaryContainer: whitecolor,
      onSecondary: Colors.red,
      onErrorContainer: Colors.transparent,
      primary: Colors.orangeAccent,
      secondary: Colors.brown,
      onSurface: Colors.red,
      surface: whitecolor,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackcolor,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        color: blackcolor,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
  static ThemeData darkmode = ThemeData(
    primaryColor: darkblackcolor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: whitecolor,
        )),
    colorScheme: ColorScheme(
      background: whitecolor,
      brightness: Brightness.light,
      error: whitecolor,
      onBackground: whitecolor,
      onError: whitecolor,
      onPrimary: whitecolor,
      primaryContainer: darkblackcolor,
      onSecondary: Colors.red,
      onErrorContainer: Colors.transparent,
      primary: Colors.orangeAccent,
      secondary: Colors.brown,
      onSurface: Colors.red,
      surface: whitecolor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkblackcolor,
      selectedItemColor: primarydarkcolor,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: primarydarkcolor,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        color: primarydarkcolor,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: primarydarkcolor,
      ),
    ),
  );
}
