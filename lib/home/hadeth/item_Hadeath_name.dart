import 'package:flutter/material.dart';

import 'hadeth_details_screen.dart';
import 'hadeth_tap.dart';

class ItemhadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemhadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailsScreen.routName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class hadethDetailsArgs {
  String name;
  int index;

  hadethDetailsArgs({required this.name, required this.index});
}
