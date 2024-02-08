import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'app_notify_provider.dart';

class Theming extends StatefulWidget {
  @override
  State<Theming> createState() => _LanguageState();
}

class _LanguageState extends State<Theming> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.orangeAccent.shade100.withOpacity(0.3),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.changemode(ThemeMode.light);
              },
              child: provider.isDark()
                  ? unselectedthem(AppLocalizations.of(context)!.light)
                  : selectedthem(AppLocalizations.of(context)!.light)),
          SizedBox(height: 20),
          InkWell(
              onTap: () {
                provider.changemode(ThemeMode.dark);
              },
              child: provider.isDark()
                  ? selectedthem(AppLocalizations.of(context)!.night)
                  : unselectedthem(AppLocalizations.of(context)!.night)),
        ],
      ),
    );
  }

  Widget selectedthem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        Icon(Icons.check, size: 30, color: Theme.of(context).primaryColor)
      ],
    );
  }

  Widget unselectedthem(String text) {
    return Text(text, style: Theme.of(context).textTheme.titleLarge);
  }
}
