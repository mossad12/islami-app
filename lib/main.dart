import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/Home_Screen.dart';
import 'package:islami/home/quran/sura_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDetailsScreen.routName: (context) => SuraDetailsScreen(),
      },
      theme: Mytheme.lightmode,
      locale: Locale('en'),
    );
  }
}
