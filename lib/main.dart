import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/Home_Screen.dart';
import 'package:islami/home/hadeth/hadeth_details_screen.dart';
import 'package:islami/home/quran/sura_details_screen.dart';
import 'package:islami/home/settings/app_notify_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(Duration(seconds: 1));
  await Future.delayed(Duration(seconds: 1));
  await Future.delayed(Duration(seconds: 1));

  FlutterNativeSplash.remove();
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDetailsScreen.routName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routName: (context) => HadethDetailsScreen(),
      },
      theme: Mytheme.lightmode,
      darkTheme: Mytheme.darkmode,
      themeMode: provider.appmode,
      locale: Locale(provider.applanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
