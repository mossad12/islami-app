import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/quran/item_sura_details.dart';
import 'package:islami/home/quran/item_sura_name.dart';
import 'package:islami/home/settings/app_notify_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = 'details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadfile(args.index);
    }
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
            args.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verses.isEmpty
            ? Center(
          child: CircularProgressIndicator(
            color: Mytheme.primarylightcolor,
          ),
        )
            : Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.06,
              horizontal: MediaQuery.of(context).size.width * 0.05),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(25),
                ),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ItemSuraDetails(
                content: verses[index],
                index: index,
              );
            },
            itemCount: verses.length,
            separatorBuilder: (context, index) {
              return Divider(
                      color: provider.isDark()
                          ? Mytheme.primarydarkcolor
                          : Theme.of(context).primaryColor,
                      thickness: 2,
                    );
            },
          ),
        ),
      )
    ]);
  }

  void loadfile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}
