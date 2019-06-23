import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './ui/screens/home.dart';

void main() => runApp(SonixApp());

class SonixApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        brightness: Brightness.light
      ),
      home: HomeScreen(),
    );
  }
}
