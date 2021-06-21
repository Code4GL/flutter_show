import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_show/provider/language_provider.dart';
import 'package:flutter_show/pages/widget/secondary_widget.dart';

class WidgetCell extends StatelessWidget {
  WidgetCell({
    Key key,
    this.title,
    this.introductionEN,
    this.introductionCN,
    this.routeName,
    this.fileName,
  }) : super(key: key);
  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return SecondaryWidgetPage(
                title: this.title,
                fileName: this.fileName,
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
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 5),
              blurRadius: 3,
              spreadRadius: 3,
              color: Colors.grey[300],
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "$title",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Consumer<LanguageProvider>(
                builder: (context, LanguageProvider languageProvider, _) =>
                    Text(
                  languageProvider.lang == "zh"
                      ? "$introductionCN"
                      : "$introductionEN",
                  style: TextStyle(color: Colors.black45),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
