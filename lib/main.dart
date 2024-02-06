import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/Home_Screen.dart';

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
      },
      theme: Mytheme.lightmode,
    );
  }
}
