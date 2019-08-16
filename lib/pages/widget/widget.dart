import 'package:flutter/material.dart';
import 'dart:convert' show json;

import '../../components//widget/widget_cell.dart';

class WidgetPage extends StatelessWidget {
  String title = "title";
  String introduction = "introduction";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString("assets/data/widget/widgetList.json"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<dynamic> data = json.decode(snapshot.data);
          return new ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return WidgetCell(title:"${data[index]['title']}",introduction:"${data[index]['introduction']}");
            },
          );
        }
        return new CircularProgressIndicator();
      },
    );
  }
}
