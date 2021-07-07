import 'package:flutter/material.dart';
import 'package:flutter_show/components/internal_webview.dart';
import 'package:flutter_show/provider/language_provider.dart';
import 'package:provider/provider.dart';

class RankCell extends StatelessWidget {
  RankCell({
    Key? key,
    required this.title,
    required this.introductionEN,
    required this.introductionCN,
    required this.routeName,
    required this.imagePath,
    required this.detailPath,
    required this.example,
  }) : super(key: key);
  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;
  final String imagePath;
  final String detailPath;
  final List example;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return InternalWebViewPage(title, detailPath);
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
        alignment: AlignmentDirectional.centerStart,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 5),
              blurRadius: 3,
              spreadRadius: 3,
              color: Colors.grey[300]!,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imagePath),
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "$title",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    alignment: AlignmentDirectional.centerStart,
                    child: Consumer<LanguageProvider>(
                      builder:
                          (context, LanguageProvider languageProvider, _) =>
                              Text(
                        languageProvider.lang == "zh"
                            ? "$introductionCN"
                            : "$introductionEN",
                        softWrap: true,
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  ),
                  Wrap(
                    children: example
                        .map(
                          (item) => Container(
                            margin: EdgeInsets.all(2),
                            child: Text(
                              item,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.blue[800],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
