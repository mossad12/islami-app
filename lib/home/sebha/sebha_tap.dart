import 'package:flutter/material.dart';
import 'package:islami/MyTheme.dart';
import 'package:islami/home/settings/app_notify_provider.dart';
import 'package:provider/provider.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int counter = 0;
  String tasbeh = 'سبحان الله';
  int all_tasbeh = 0;
  double rotate = 0.0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Column(children: [
      Stack(
        children: [
          Center(child: Image.asset('assets/images/head_sebha_logo.png')),
          Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.08),
              child: Center(
                  child: Transform.rotate(
                      angle: rotate,
                      child:
                          Image.asset('assets/images/body_sebha_logo.png')))),
        ],
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Text(
          'عدد التسبيحات',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    provider.isDark()
                        ? Mytheme.primarydarkcolor
                        : Mytheme.primarylightcolor,
                  ),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () {
                  all_tasbeh = 0;
                  counter = 0;
                  tasbeh = 'سبحان الله';
                  setState(() {});
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Icon(Icons.delete, color: Colors.white, size: 30),
                )),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: provider.isDark()
                  ? Mytheme.primarydarkcolor
                  : Mytheme.primarylightcolor,
            ),
            child: Text(
              '$all_tasbeh',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.all(20),
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                provider.isDark()
                    ? Mytheme.primarydarkcolor
                    : Mytheme.primarylightcolor,
              ),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
            ),
            onPressed: () {
              rotate++;
              all_tasbeh++;
              tsbehChang();
              setState(() {});
            },
            child: Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '$counter',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: provider.isDark()
              ? Mytheme.primarydarkcolor
              : Mytheme.primarylightcolor,
        ),
        child: Text(
          '$tasbeh',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }

  tsbehChang() {
    counter++;
    if (counter == 33 && tasbeh == 'سبحان الله') {
      counter = 0;
      tasbeh = 'الحمد لله';
    }
    if (counter == 33 && tasbeh == 'الحمد لله') {
      counter = 0;
      tasbeh = 'لا اله الا الله';
    }
    ;
    if (counter == 33 && tasbeh == 'لا اله الا الله') {
      counter = 0;
      tasbeh = 'الله اكبر';
    }
    if (counter == 33 && tasbeh == 'الله اكبر') {
      counter = 0;
      tasbeh = 'سبحان الله';
    }
  }
}
