import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/settings/app_notify_provider.dart';
import 'package:provider/provider.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Text(
      '$content',
      style: provider.isDark()
          ? Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Mytheme.primarydarkcolor)
          : Theme.of(context).textTheme.titleMedium,
      textAlign: TextAlign.center,
    );
  }
}
