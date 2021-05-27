import 'package:flutter/material.dart';

import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/provider/language_provider.dart';
import 'package:provider/provider.dart';

import 'accessibility/exclude_semantics.dart';
import 'accessibility/merge_semantics.dart';
import 'accessibility/semantics.dart';
import 'assets_widget/asset_bundle.dart';
import 'assets_widget/icon.dart';
import 'assets_widget/image.dart';
import 'assets_widget/raw_image.dart';
import 'async/future_builder.dart';
import 'async/stream_builder.dart';

class ThreeLevelWidgetPage extends StatelessWidget {
  ThreeLevelWidgetPage({
    Key key,
    this.title,
    this.introductionEN,
    this.introductionCN,
    this.routeName,
    this.imagePath,
    this.docPath,
    this.inheritance,
    this.constructors,
  }) : super(key: key);

  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;
  final String imagePath;
  final String docPath;
  final String inheritance;
  final String constructors;

  // routeName路由映射
  final _routes = {
    // Accessibility
    'Widget/Accessibility/ExcludeSemantics': ExcludeSemanticsPage(),
    'Widget/Accessibility/MergeSemantics': MergeSemanticsPage(),
    'Widget/Accessibility/Semantics': SemanticsPage(),
    // Assets
    'Widget/Assets/AssetBundle': AssetBundlePage(),
    'Widget/Assets/Icon': IconPage(),
    'Widget/Assets/Image': ImagePage(),
    'Widget/Assets/RawImage': RawImagePage(),
    // Assets
    'Widget/Async/FutureBuilder': FutureBuilderPage(),
    'Widget/Async/StreamBuilder': StreamBuilderPage(),
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
              height: 40,
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Consumer<LanguageProvider>(
              builder: (context, LanguageProvider languageProvider, _) => Text(
                languageProvider.lang == "zh" ? introductionCN : introductionEN,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ),
            // 继承关系
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Consumer<LanguageProvider>(
                    builder: (context, LanguageProvider languageProvider, _) =>
                        Text(
                      languageProvider.lang == "zh" ? '继承关系' : 'Inheritance',
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
                Text(
                  inheritance,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            // 构造函数
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Consumer<LanguageProvider>(
                    builder: (context, LanguageProvider languageProvider, _) =>
                        Text(
                      languageProvider.lang == "zh" ? '构造函数' : 'Constructors',
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
                Text(
                  constructors,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
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
