import 'package:flutter/material.dart';

import '../../MyTheme.dart';

class HadethTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(child: Image.asset('assets/images/hadeth_logo.png')),
      Divider(
        color: Mytheme.primarylightcolor,
        thickness: 3,
      ),
      Text(
        'Hadeth Name',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      Divider(
        color: Mytheme.primarylightcolor,
        thickness: 3,
      ),
    ]);
  }
}
