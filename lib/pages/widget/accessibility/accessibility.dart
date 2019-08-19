import 'package:flutter/material.dart';
import 'dart:convert' show json;

import 'package:flutter_show/components/image_card.dart';

class AccessibilityPage extends StatefulWidget {
  AccessibilityPage({Key key}) : super(key: key);
  final String title = "title";
  final String introduction = "introduction";
  final String routeName = "routeName";

  @override
  AccessibilityPageState createState() => AccessibilityPageState();
}

class AccessibilityPageState extends State<AccessibilityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AccessibilityPage'),
        ),
        body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString("assets/data/widget/accessibility.json"),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<dynamic> data = json.decode(snapshot.data);
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ImageCard(
                    title: "${data[index]['title']}",
                    introduction: "${data[index]['introduction']}",
                    routeName: "${data[index]['routeName']}",
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
    );
  }
}

