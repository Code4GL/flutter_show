import 'package:flutter/material.dart';
import 'dart:convert' show json;

import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/utils/color.dart';
import '../../components/color_cell.dart';

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
                    return ColorCell(
                        title: "${data[index]['title']}",
                        introductionEN: "${data[index]['introductionEN']}",
                        introductionCN: "${data[index]['introductionCN']}",
                        routeName: "${data[index]['routeName']}",
                        randomColor: ColorUtil.randomColor(),
                        fileName: "${data[index]['fileName']}");
                  },
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              int n = null;
            });
          },
          child: Icon(Icons.refresh),
          backgroundColor: ColorUtil.randomColor(),
          tooltip: "refresh color",
        ));
  }
}
