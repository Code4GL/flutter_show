import 'package:flutter/material.dart';
import 'dart:convert' show json;

import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/components/image_card.dart';

class CupertinoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cupertino"),
          centerTitle: true,
          actions: <Widget>[
            LanguageChange(),
          ],
        ),
        body: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/data/widget/cupertino.json"),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<dynamic> data = json.decode(snapshot.data);
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ImageCard(
                        title: "${data[index]['title']}",
                        introductionEN: "${data[index]['introductionEN']}",
                        introductionCN: "${data[index]['introductionCN']}",
                        routeName: "${data[index]['routeName']}",
                        imagePath: "${data[index]['imagePath']}",
                        docPath: "${data[index]['docPath']}");
                  },
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ));
  }
}
