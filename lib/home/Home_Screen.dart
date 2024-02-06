import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/hadeth/hadeth_tap.dart';
import 'package:islami/home/quran/quran_tap.dart';
import 'package:islami/home/radio/Radio_tap.dart';
import 'package:islami/home/sebha/sebha_tap.dart';
import 'package:islami/home/settings/Settings_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Mytheme.primarylightcolor,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (index) {
                selectedindex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ],
            ),
          ),
          body: taps[selectedindex],
        ),
      ],
    );
  }

  List<Widget> taps = [
    QuranTap(),
    HadethTap(),
    SebhaTap(),
    RadioTap(),
    SettingsTap(),
  ];
}
