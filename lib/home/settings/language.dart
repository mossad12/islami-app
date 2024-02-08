import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'app_notify_provider.dart';

class Language extends StatefulWidget {
  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
                provider.changelanguage('en');
              },
              child: provider.applanguage == 'en'
                  ? selectedlanguage(AppLocalizations.of(context)!.english)
                  : unselectedlanguage(AppLocalizations.of(context)!.english)),
          SizedBox(height: 20),
          InkWell(
              onTap: () {
                provider.changelanguage('ar');
              },
              child: provider.applanguage == 'en'
                  ? unselectedlanguage(AppLocalizations.of(context)!.arbic)
                  : selectedlanguage(AppLocalizations.of(context)!.arbic)),
        ],
      ),
    );
  }

  Widget selectedlanguage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        Icon(
          Icons.check,
          size: 30,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget unselectedlanguage(String text) {
    return Text(text, style: Theme.of(context).textTheme.titleLarge);
  }
}
