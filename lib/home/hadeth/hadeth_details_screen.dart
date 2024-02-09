import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_tap.dart';
import 'package:islami/home/hadeth/item_Hadeth_details.dart';
import 'package:islami/home/settings/app_notify_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routName = 'hadeth_details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Stack(children: [
      provider.isDark()
          ? Image.asset(
              'assets/images/dark_bg.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/default_bg.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.06,
              horizontal: MediaQuery.of(context).size.width * 0.05),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(25),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetails(
                content: args.content[index],
              );
            },
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}
