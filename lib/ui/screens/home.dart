import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/post_item.dart' show PostGridItem;

class _HomeScreenState extends State<HomeScreen> {
  List postList = List();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Color(0xFFEFEFF4)),
          child: Container(
            child: CustomScrollView(
              slivers: <Widget>[
                CupertinoSliverNavigationBar(
                    largeTitle: const Text(
                      'Sonix VGM',
                      maxLines: 1,
                    ),
                    previousPageTitle: 'Cupertino',
                    trailing: Icon(Icons.search)),
                CupertinoSliverRefreshControl(
                  onRefresh: () {},
                ),
                SliverSafeArea(
                  top: false,
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return PostGridItem(
                          name: 'name$index',
                          place: 'place$index',
                          date: 'date',
                          called: true);
                    }),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
