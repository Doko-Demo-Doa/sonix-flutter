import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PostDetail extends StatelessWidget {
  final String title, image, content;

  PostDetail(this.title, this.image, this.content);

  final String extraStyles =
      "<style>body { font-family: sans-serif; font-size: 18pt; padding-left: 24px; padding-right: 24px;}</style>";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(this.title, maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
      backgroundColor: Colors.white,
      child: Container(
          padding: const EdgeInsets.only(top: 24),
          decoration: BoxDecoration(color: Colors.transparent),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CachedNetworkImage(
                    imageUrl: this.image, width: 400, height: 400),
                Container(
                    child: WebView(
                        initialUrl: Uri.dataFromString(content,
                                mimeType: 'text/html')
                            .toString()))
              ],
            ),
          )),
    );
  }
}
