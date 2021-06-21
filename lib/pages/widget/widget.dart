import 'package:flutter/material.dart';
import 'dart:convert' show json;

import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/components/widget_cell.dart';

class WidgetPage extends StatefulWidget {
  WidgetPage({Key key}) : super(key: key);

  @override
  WidgetPageState createState() => WidgetPageState();
}

class WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.dehaze),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: <Widget>[
          LanguageChange(),
        ],
      ),
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString("assets/data/widget/widget_list.json"),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<dynamic> data = json.decode(snapshot.data);
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return WidgetCell(
                    title: "${data[index]['title']}",
                    introductionEN: "${data[index]['introductionEN']}",
                    introductionCN: "${data[index]['introductionCN']}",
                    routeName: "${data[index]['routeName']}",
                    fileName: "${data[index]['fileName']}",
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
