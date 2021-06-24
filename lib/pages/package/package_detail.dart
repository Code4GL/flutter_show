import 'package:flutter/material.dart';

import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/provider/language_provider.dart';
import 'package:provider/provider.dart';

import 'basics/cupertino_icons.dart';
import 'basics/provider.dart';
import 'basics/webview_flutter.dart';

class PackageDetailPage extends StatelessWidget {
  PackageDetailPage({
    Key key,
    this.title,
    this.introductionEN,
    this.introductionCN,
    this.routeName,
    this.isNullSafety,
    this.isFavourite,
    this.owner,
    this.ownerPath,
    this.detailPath,
    this.flutter,
    this.dart,
    this.apiResult,
  }) : super(key: key);

  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;
  final bool isNullSafety;
  final bool isFavourite;
  final String owner;
  final String ownerPath;
  final String detailPath;
  final List flutter;
  final List dart;
  final String apiResult;

  // routeName路由映射
  final _routes = {
    "package/basics/cupertino_icons": CupertinoIconsPage(),
    "package/basics/provider": ProviderPage(),
    "package/basics/webview_flutter": WebviewFlutterPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          LanguageChange(),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 类名
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Consumer<LanguageProvider>(
                builder: (context, LanguageProvider languageProvider, _) =>
                    Text(
                  languageProvider.lang == "zh"
                      ? introductionCN
                      : introductionEN,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            // 介绍
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            height: 12,
                            width: 12,
                            color: Colors.grey[600],
                            image: AssetImage(
                              'assets/images/package/verified-publisher-icon.png',
                            ),
                          ),
                          Text(
                            "$owner",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.blue[800],
                            ),
                          ),
                        ],
                      ),
                      isFavourite
                          ? Container(
                              margin: EdgeInsets.only(left: 5),
                              padding: EdgeInsets.fromLTRB(5, 1, 5, 2),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue[800]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  FlutterLogo(size: 10),
                                  Text(
                                    'Flutter Favorite',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.blue[800],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                      isNullSafety
                          ? Container(
                              margin: EdgeInsets.only(left: 5),
                              padding: EdgeInsets.fromLTRB(5, 1, 5, 2),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue[800]),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Null Safety',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.blue[800],
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                flutter.length > 0
                    ? Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[50],
                                border: Border(
                                  right: BorderSide(
                                    width: 0.5,
                                    color: Colors.blue[800],
                                  ),
                                ),
                              ),
                              child: Text(
                                'FLUTTER',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800],
                                ),
                              ),
                            ),
                            Row(
                              children: flutter
                                  .map(
                                    (item) => Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue[50],
                                      ),
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.blue[800],
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            )
                          ],
                        ),
                      )
                    : Container(),
                dart.length > 0
                    ? Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[50],
                                border: Border(
                                  right: BorderSide(
                                    width: 0.5,
                                    color: Colors.blue[800],
                                  ),
                                ),
                              ),
                              child: Text(
                                'DART',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800],
                                ),
                              ),
                            ),
                            Row(
                              children: dart
                                  .map(
                                    (item) => Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlue[50],
                                      ),
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.blue[800],
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            )
                          ],
                        ),
                      )
                    : Container(),
                apiResult.length > 0
                    ? Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'API Result:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              "${apiResult.split('/')[apiResult.split('/').length - 1]}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.blue[800],
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
            // 示例
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Consumer<LanguageProvider>(
                builder: (context, LanguageProvider languageProvider, _) =>
                    Text(
                  languageProvider.lang == "zh" ? '示例' : 'Example',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 5,
              color: Colors.orange[100],
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 50),
              child: _routes[routeName],
            ),
          ],
        ),
      ),
    );
  }
}
