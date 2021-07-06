import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// 外部网页：即没有Navigator的网页
class ExternalWebViewPage extends StatefulWidget {
  ExternalWebViewPage(
    Key? key,
    this.title,
    this.url,
  ) : super(key: key);

  final String title;
  final String url;

  @override
  State<StatefulWidget> createState() => _ExternalWebViewPageState(title, url);
}

class _ExternalWebViewPageState extends State<ExternalWebViewPage> {
  String title;
  String url;

  _ExternalWebViewPageState(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: this.url,
      //JS执行模式:是否允许JS执行
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
