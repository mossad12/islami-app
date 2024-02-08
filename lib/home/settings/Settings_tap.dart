import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/settings/Them_mode.dart';
import 'package:islami/home/settings/language.dart';
import 'package:provider/provider.dart';

import 'app_notify_provider.dart';

class SettingsTap extends StatefulWidget {
  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 35, horizontal: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.orange.shade400.withOpacity(0.3),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: () {
              showlanguagebottomsheet();
            },
            child: Container(
              padding: EdgeInsets.all(17),
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.applanguage == 'en'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arbic,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: MediaQuery.of(context).size.longestSide * 0.05,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          Text(
            AppLocalizations.of(context)!.them_mode,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: () {
              showthembottomsheet();
            },
            child: Container(
              padding: EdgeInsets.all(17),
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.isDark()
                        ? AppLocalizations.of(context)!.night
                        : AppLocalizations.of(context)!.light,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: MediaQuery.of(context).size.longestSide * 0.05,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showlanguagebottomsheet() {
    showModalBottomSheet(context: context, builder: (context) => Language());
  }

  void showthembottomsheet() {
    showModalBottomSheet(context: context, builder: (context) => Theming());
  }
}
