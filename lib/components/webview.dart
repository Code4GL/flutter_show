import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  WebViewPage(
    Key? key,
    this.title,
    this.url,
  ) : super(key: key);

  final String url;
  final String title;

  @override
  State<StatefulWidget> createState() => new WebViewPageState(title, url);
}

class WebViewPageState extends State<WebViewPage> {
  String url;
  String title;

  WebViewPageState(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: this.url,
      //JS执行模式:是否允许JS执行
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
