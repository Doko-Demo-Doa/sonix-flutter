import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sonix/api/api_post.dart';
import 'package:sonix/models/post.dart';
import 'package:sonix/ui/screens/post_detail.dart';
import '../widgets/post_item.dart' show PostGridItem;

class _HomeScreenState extends State<HomeScreen> {
  List<Post> postList = List();

  @override
  void initState() {
    super.initState();
    ApiPost.getRecentPosts(1, 30).then((values) {
      print(values[0].image);
      this.setState(() {
        postList = values;
      });
    });
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
                  onRefresh: () async {},
                ),
                SliverSafeArea(
                  top: false,
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (ctx) => PostDetail()));
                          },
                          child: PostGridItem(
                              name: 'name$index',
                              image: postList[index].image,
                              date: 'date',
                              called: true));
                    }, childCount: postList.length), // Number of items.
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
