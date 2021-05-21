import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_show/provider/language_provider.dart';

class ImageCard extends StatelessWidget {
  ImageCard(
      {Key key,
      this.title,
      this.introductionEN,
      this.introductionCN,
      this.routeName,
      this.imagePath,
      this.docPath})
      : super(key: key);
  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;
  final String imagePath;
  final String docPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (BuildContext context) {
        //   return WebViewPage(this.title, this.docPath);
        // }));
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        elevation: 3, //设置阴影
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))), //设置圆角
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment(0, 0.9),
              children: <Widget>[
                Container(
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage(
                            '$imagePath' == ''
                                ? 'assets/images/flutter.png'
                                : '$imagePath',
                          ),
                          fit: '$imagePath' == ''
                              ? BoxFit.cover
                              : BoxFit.contain,
                        ))),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "$title",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              alignment: AlignmentDirectional.centerStart,
              child: Consumer<LanguageProvider>(
                builder: (context, LanguageProvider languageProvider, _) =>
                    Text(
                  languageProvider.lang == "zh"
                      ? "$introductionCN"
                      : "$introductionEN",
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
