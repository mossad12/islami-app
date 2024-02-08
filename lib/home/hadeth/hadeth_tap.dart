import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(child: Image.asset('assets/images/hadeth_logo.png')),
      Divider(
        color: Theme.of(context).primaryColor,
        thickness: 3,
      ),
      Text(
        AppLocalizations.of(context)!.hadeth_name,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      Divider(
        color: Theme.of(context).primaryColor,
        thickness: 3,
      ),
    ]);
  }
}
