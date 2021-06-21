import 'package:flutter/material.dart';
import 'dart:convert' show json;

import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/components/image_cell.dart';

class SecondaryWidgetPage extends StatelessWidget {
  SecondaryWidgetPage({
    Key key,
    this.title,
    this.fileName,
  }) : super(key: key);

  final String title;
  final String fileName;

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
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString("assets/data/widget/$fileName.json"),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<dynamic> data = json.decode(snapshot.data);
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ImageCell(
                    title: "${data[index]['title']}",
                    introductionEN: "${data[index]['introductionEN']}",
                    introductionCN: "${data[index]['introductionCN']}",
                    routeName: "${data[index]['routeName']}",
                    imagePath: "${data[index]['imagePath']}",
                    docPath: "${data[index]['docPath']}",
                    inheritance: "${data[index]['inheritance']}",
                    constructors: "${data[index]['constructors']}",
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
