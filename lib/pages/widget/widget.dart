import 'package:flutter/material.dart';
import 'dart:convert' show json;

import '../../components/widget/widget_cell.dart';

class WidgetPage extends StatelessWidget {

  final String title = "title";
  final String introduction = "introduction";
  final String routeName = "routeName";

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString("assets/data/widget/widgetList.json"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<dynamic> data = json.decode(snapshot.data);
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return WidgetCell(
                title: "${data[index]['title']}",
                introduction: "${data[index]['introduction']}",
                routeName: "${data[index]['routeName']}",
              );
            },
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
