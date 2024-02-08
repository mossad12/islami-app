import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String applanguage = 'en';
  ThemeMode appmode = ThemeMode.light;

  void changelanguage(String newlanguage) {
    if (applanguage == newlanguage) {
      return;
    }
    applanguage = newlanguage;
    notifyListeners();
  }

  void changemode(ThemeMode newmode) {
    if (appmode == newmode) {
      return;
    }
    appmode = newmode;
    notifyListeners();
  }

  bool isDark() {
    return appmode == ThemeMode.dark;
  }
}
