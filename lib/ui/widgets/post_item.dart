import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sonix/utils/utils_colors.dart';

const DUMMY_IMAGE =
    'https://docs.spring.io/spring-boot/docs/current/reference/html/images/note.png';

class PostGridItem extends StatelessWidget {
  const PostGridItem({
    this.name,
    this.image
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    final itemSize = MediaQuery.of(context).size.width * 0.47;

    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: CachedNetworkImageProvider(
                      image != null ? image : DUMMY_IMAGE),
                  fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: CommonColors.COLOR_SECONDARY_TEXT,
                    blurRadius: 2,
                    spreadRadius: 2)
              ]),
          height: itemSize,
          margin: const EdgeInsets.all(6),
          padding: const EdgeInsets.only(top: 9.0),
        ),
        Container(
          height: itemSize,
          margin: const EdgeInsets.all(6),
          padding: const EdgeInsets.only(top: 9.0),
          decoration: BoxDecoration(
              color: Colors.grey,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.7)
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 20, 10),
          child: Text(name,
              style: TextStyle(color: Colors.white, fontSize: 13),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
        )
      ],
    );
  }
}
