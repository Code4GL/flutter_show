import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/pages/usage/three_level_usage.dart';
import 'package:provider/provider.dart';

import '../../provider/language_provider.dart';

class SecondaryUsagePage extends StatelessWidget {
  SecondaryUsagePage({
    Key? key,
    required this.title,
    required this.fileName,
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
              .loadString("assets/data/usage/$fileName.json"),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<dynamic> data = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return ThreeLevelUsagePage(
                              title: "${data[index]['title']}",
                              introductionCN:
                                  "${data[index]['introductionCN']}",
                              introductionEN:
                                  "${data[index]['introductionEN']}",
                              routeName: "${data[index]['routeName']}",
                            );
                          },
                        ),
                      );
                    },
                    child: Hero(
                      tag: "${data[index]['title']}",
                      transitionOnUserGestures: true,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        alignment: AlignmentDirectional.centerStart,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(3, 5),
                              blurRadius: 3,
                              spreadRadius: 3,
                              color: Theme.of(context)
                                  .colorScheme
                                  .shadow
                                  .withOpacity(0.2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "${data[index]['title']}",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            Container(
                              child: Consumer<LanguageProvider>(
                                builder: (context,
                                        LanguageProvider languageProvider, _) =>
                                    Text(
                                  languageProvider.lang == "zh"
                                      ? "${data[index]['introductionCN']}"
                                      : "${data[index]['introductionEN']}",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
