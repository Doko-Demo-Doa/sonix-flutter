import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape_small.dart';
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
      this.setState(() {
        postList = values;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var unescape = new HtmlUnescape();

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
                      final String pTitle =
                          unescape.convert(postList[index].title);
                      final String pImage = postList[index].image;
                      final String pContent = postList[index].excerpt;

                      return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (ctx) => PostDetail(pTitle, pImage, pContent)));
                          },
                          child: PostGridItem(
                              name: pTitle,
                              image: pImage));
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
