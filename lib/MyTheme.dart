import 'package:flutter/material.dart';

class Mytheme {
  static Color blackcolor = Color(0xff242424);
  static Color primarylightcolor = Color(0xffB7935F);
  static ThemeData lightmode = ThemeData(
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
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackcolor,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        color: blackcolor,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
