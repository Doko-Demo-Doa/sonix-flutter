import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:sonix/utils/utils_colors.dart';

const DUMMY_IMAGE = 'https://docs.spring.io/spring-boot/docs/current/reference/html/images/note.png';

class PostGridItem extends StatelessWidget {
  const PostGridItem({
    this.name,
    this.image,
    this.date,
    this.called,
  });

  final String name;
  final String image;
  final String date;
  final bool called;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(image != null ? image : DUMMY_IMAGE),
          fit: BoxFit.cover
        ),
        color: CupertinoColors.white,
        boxShadow: [
          BoxShadow(color: CommonColors.COLOR_SECONDARY_TEXT, blurRadius: 2, spreadRadius: 2)
        ]
      ),
      height: 70.0,
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.only(top: 9.0),
      child: Stack(
        children: <Widget>[
          Text('Maneuver')
        ],
      ),
    );
  }
}
