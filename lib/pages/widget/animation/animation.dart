import 'package:flutter/material.dart';
import 'dart:convert' show json;
import 'package:flutter_show/generated/i18n.dart';

import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/components/image_card.dart';


class AnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AnimationPage'),
          centerTitle:true,
          actions: <Widget>[
            LanguageChange(),
          ],
        ),
        body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString(I18n.of(context).flag == "en" ? "assets/data/en/widget/animation.json":"assets/data/zh/widget/animation.json"),
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
                    imagePath:"${data[index]['imagePath']}",
                    docPath:"${data[index]['docPath']}"
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
