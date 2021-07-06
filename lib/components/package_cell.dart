import 'package:flutter/material.dart';
import 'package:flutter_show/pages/package/package_detail.dart';
import 'package:provider/provider.dart';
import 'package:flutter_show/provider/language_provider.dart';

class PackageCell extends StatelessWidget {
  PackageCell({
    Key? key,
    required this.title,
    required this.introductionEN,
    required this.introductionCN,
    required this.routeName,
    required this.isNullSafety,
    required this.isFavourite,
    required this.owner,
    required this.ownerPath,
    required this.detailPath,
    required this.flutter,
    required this.dart,
    required this.apiResult,
  }) : super(key: key);
  final String title;
  final String introductionEN;
  final String introductionCN;
  final String routeName;
  final bool isNullSafety;
  final bool isFavourite;
  final String owner;
  final String ownerPath;
  final String detailPath;
  final List flutter;
  final List dart;
  final String apiResult;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return PackageDetailPage(
                title: title,
                introductionEN: introductionEN,
                introductionCN: introductionCN,
                routeName: routeName,
                isNullSafety: isNullSafety,
                isFavourite: isFavourite,
                owner: owner,
                ownerPath: ownerPath,
                detailPath: detailPath,
                flutter: flutter,
                dart: dart,
                apiResult: apiResult,
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
              color: Colors.grey[300]!,
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
                  color: Colors.blue[800],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
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
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        height: 12,
                        width: 12,
                        color: Colors.grey[600],
                        image: AssetImage(
                          'assets/images/package/verified-publisher-icon.png',
                        ),
                      ),
                      Text(
                        "$owner",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.blue[800],
                        ),
                      ),
                    ],
                  ),
                  isFavourite
                      ? Container(
                          margin: EdgeInsets.only(left: 5),
                          padding: EdgeInsets.fromLTRB(5, 1, 5, 2),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue[800]!),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              FlutterLogo(size: 10),
                              Text(
                                'Flutter Favorite',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.blue[800],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                  isNullSafety
                      ? Container(
                          margin: EdgeInsets.only(left: 5),
                          padding: EdgeInsets.fromLTRB(5, 1, 5, 2),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue[800]!),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Null Safety',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.blue[800],
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            flutter.length > 0
                ? Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[50],
                            border: Border(
                              right: BorderSide(
                                width: 0.5,
                                color: Colors.blue[800]!,
                              ),
                            ),
                          ),
                          child: Text(
                            'FLUTTER',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800],
                            ),
                          ),
                        ),
                        Row(
                          children: flutter
                              .map(
                                (item) => Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue[50],
                                  ),
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
                        )
                      ],
                    ),
                  )
                : Container(),
            dart.length > 0
                ? Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[50],
                            border: Border(
                              right: BorderSide(
                                width: 0.5,
                                color: Colors.blue[800]!,
                              ),
                            ),
                          ),
                          child: Text(
                            'DART',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800],
                            ),
                          ),
                        ),
                        Row(
                          children: dart
                              .map(
                                (item) => Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue[50],
                                  ),
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
                        )
                      ],
                    ),
                  )
                : Container(),
            apiResult.length > 0
                ? Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'API Result:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          "${apiResult.split('/')[apiResult.split('/').length - 1]}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.blue[800],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
