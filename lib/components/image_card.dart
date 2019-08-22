import 'package:flutter/material.dart';

import 'package:flutter_show/components/webview.dart';

class ImageCard extends StatelessWidget {
  ImageCard(
      {Key key,
      this.title,
      this.introduction,
      this.routeName,
      this.imagePath,
      this.docPath})
      : super(key: key);
  final String title;
  final String introduction;
  final String routeName;
  final String imagePath;
  final String docPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return WebViewPage(this.title, this.docPath);
        }));
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        elevation: 10, //设置阴影
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))), //设置圆角
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment(0, 0.8),
              children: <Widget>[
                Container(
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage(
                            '$imagePath',
                          ),
                          fit: BoxFit.cover,
                        ))),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "$title",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "$introduction",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
