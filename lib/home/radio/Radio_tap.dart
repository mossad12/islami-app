import 'package:flutter/material.dart';

import '../../MyTheme.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(child: Image.asset('assets/images/radio_image.png')),
      SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.skip_previous,
            color: Mytheme.primarylightcolor,
            size: 55,
          ),
          Icon(
            Icons.play_arrow,
            color: Mytheme.primarylightcolor,
            size: 55,
          ),
          Icon(
            Icons.skip_next,
            color: Mytheme.primarylightcolor,
            size: 55,
          ),
        ],
      )
    ]);
  }
}
