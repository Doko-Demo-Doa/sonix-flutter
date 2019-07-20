import 'package:flutter/cupertino.dart';
import 'package:sonix/utils/utils_colors.dart';

class PostGridItem extends StatelessWidget {
  const PostGridItem({
    this.name,
    this.place,
    this.date,
    this.called,
  });

  final String name;
  final String place;
  final String date;
  final bool called;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: CupertinoColors.white,
        boxShadow: [
          BoxShadow(color: CommonColors.COLOR_SECONDARY_TEXT, blurRadius: 2, spreadRadius: 2)
        ]
      ),
      height: 70.0,
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.only(top: 9.0),
      child: Column(
        children: <Widget>[
          Image.network('https://cdn.bulbagarden.net/upload/8/89/730Primarina.png', height: 60)
        ],
      ),
    );
  }
}
