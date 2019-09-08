import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Nav'),
      ),
      backgroundColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(color: Colors.yellow),
      ),
      
    );
  }
}