import 'package:flutter/material.dart';
import 'package:islami/home/settings/app_notify_provider.dart';
import 'package:provider/provider.dart';

import '../../MyTheme.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(child: Image.asset('assets/images/radio_image.png')),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
      ),
      Text(
        'اذاعة القران الكريم',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.skip_previous,
            color: provider.isDark()
                ? Mytheme.primarydarkcolor
                : Mytheme.primarylightcolor,
            size: 55,
          ),
          Icon(
            Icons.play_arrow,
            color: provider.isDark()
                ? Mytheme.primarydarkcolor
                : Mytheme.primarylightcolor,
            size: 55,
          ),
          Icon(
            Icons.skip_next,
            color: provider.isDark()
                ? Mytheme.primarydarkcolor
                : Mytheme.primarylightcolor,
            size: 55,
          ),
        ],
      )
    ]);
  }
}
