import 'package:flutter/cupertino.dart';

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
      color: CupertinoColors.black,
      height: 70.0,
      padding: const EdgeInsets.only(top: 9.0),
      child: Column(
        children: <Widget>[
          Image.network('https://cdn.bulbagarden.net/upload/8/89/730Primarina.png', height: 60)
        ],
      ),
    );
  }
}
