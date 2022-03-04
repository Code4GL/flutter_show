import 'package:flutter/material.dart';
import 'dart:convert' show json;

import 'package:flutter_show/components/language_change.dart';
import 'package:provider/provider.dart';

import '../../provider/language_provider.dart';
import 'secondary_usage.dart';

class UsagePage extends StatefulWidget {
  UsagePage({Key? key}) : super(key: key);

  @override
  _UsagePageState createState() => _UsagePageState();
}

class _UsagePageState extends State<UsagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usage'),
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
              .loadString("assets/data/usage/usage_list.json"),
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
                            return SecondaryUsagePage(
                              title: "${data[index]['title']}",
                              fileName: "${data[index]['fileName']}",
                            );
                          },
                        ),
                      );
                    },
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
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Text(
                                "${data[index]['title'][0]}",
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "${data[index]['title']}",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                ),
                                Container(
                                  child: Consumer<LanguageProvider>(
                                    builder: (context,
                                            LanguageProvider languageProvider,
                                            _) =>
                                        Text(
                                      languageProvider.lang == "zh"
                                          ? "${data[index]['introductionCN']}"
                                          : "${data[index]['introductionEN']}",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
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
