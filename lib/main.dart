import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonix/providers/post_live_model.dart';
import './ui/screens/home.dart';

void main() => runApp(
  ChangeNotifierProvider(
    builder: (context) => PostLiveModel(),
    child: SonixApp(),
  )
);

/// Root widget.
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
