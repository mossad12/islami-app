import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/hadeth/item_Hadeath_name.dart';
import 'package:islami/home/settings/app_notify_provider.dart';
import 'package:provider/provider.dart';

import '../../MyTheme.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadfile();
    }
    var provider = Provider.of<AppProvider>(context);
    return Column(children: [
      Center(child: Image.asset('assets/images/hadeth_logo.png')),
      Divider(
        color: provider.isDark()
            ? Mytheme.primarydarkcolor
            : Theme.of(context).primaryColor,
        thickness: 3,
      ),
      Text(
        AppLocalizations.of(context)!.hadeth_name,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      Divider(
        color: provider.isDark()
            ? Mytheme.primarydarkcolor
            : Theme.of(context).primaryColor,
        thickness: 3,
      ),
      Expanded(
        child: ahadeth.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Mytheme.primarylightcolor,
                ),
              )
            : ListView.separated(
                itemBuilder: (context, index) {
                  return ItemhadethName(hadeth: ahadeth[index]);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: provider.isDark()
                        ? Mytheme.primarydarkcolor
                        : Theme.of(context).primaryColor,
                    thickness: 2,
                  );
                },
                itemCount: ahadeth.length),
      ),
    ]);
  }

  loadfile() async {
    String hadethcontent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethlist = hadethcontent.split('#\r\n');
    for (int i = 0; i < hadethlist.length; i++) {
      List<String> hadethlines = hadethlist[i].split('\n');
      String title = hadethlines[0];
      hadethlines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethlines);
      ahadeth.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
