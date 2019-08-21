import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends StatelessWidget {
  final String title;
  final String docPath;
  WebViewPage({Key key,this.title,this.docPath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
      body: WebviewScaffold(
        url: "$docPath",
      ),
    );
  }
}
