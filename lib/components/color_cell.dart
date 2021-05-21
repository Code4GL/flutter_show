import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_show/provider/language_provider.dart';
import 'package:flutter_show/pages/widget/secondary_widget.dart';

class ColorCell extends StatelessWidget {
  ColorCell({
    Key key,
    this.title,
    this.introductionEN,
    this.introductionCN,
    this.routeName,
    this.randomColor,
    this.fileName,
  }) : super(key: key);
  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;
  final Color randomColor;
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
        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
        alignment: AlignmentDirectional.centerStart,
        decoration: BoxDecoration(
          color: randomColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: randomColor,
              offset: Offset(0, 0),
              blurRadius: 5,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "$title",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: randomColor.computeLuminance() < 0.1
                      ? Colors.white70
                      : Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
              alignment: AlignmentDirectional.centerStart,
              child: Consumer<LanguageProvider>(
                builder: (context, LanguageProvider languageProvider, _) =>
                    Text(
                  languageProvider.lang == "zh"
                      ? "$introductionCN"
                      : "$introductionEN",
                  style: TextStyle(
                    color: randomColor.computeLuminance() < 0.1
                        ? Colors.white70
                        : Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
