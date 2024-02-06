import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/item_sura_name.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = 'details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [''];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadfile(args.index);
    }

    return Stack(children: [
      Image.asset(
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
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(verses[index]);
          },
          itemCount: verses.length,
        ),
      ),
    ]);
  }

  void loadfile(int index) async {
    String content =
        await rootBundle.loadString('asset/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}
