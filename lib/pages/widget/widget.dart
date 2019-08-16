import 'package:flutter/material.dart';
import 'dart:convert' show json;

import '../../components//widget/widget_cell.dart';

class WidgetPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString("assets/data/widget/widgetList.json"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<dynamic> data = json.decode(snapshot.data.toString());
          return new ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return new Card(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Text("title: ${data[index]["title"]}"),
                    new Text("Introduction: ${data[index]["Introduction"]}"),
                  ],
                ),
              );
            },
          );
        }
        return new CircularProgressIndicator();
      },
    );
  }
}
