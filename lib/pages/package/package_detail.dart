import 'package:flutter/material.dart';

import 'package:flutter_show/components/language_change.dart';
import 'package:flutter_show/components/internal_webview.dart';
import 'package:flutter_show/provider/language_provider.dart';
import 'package:provider/provider.dart';

import 'basics/connectivity_plus.dart';
import 'basics/cupertino_icons.dart';
import 'basics/dio.dart';
import 'basics/get.dart';
import 'basics/provider.dart';
import 'basics/shared_preferences.dart';
import 'basics/url_launcher.dart';
import 'basics/webview_flutter.dart';

import 'chart/fl_chart/fl_chart.dart';
import 'chart/syncfusion_flutter_charts/syncfusion_flutter_charts.dart';
import 'chart/charts_flutter/charts_flutter.dart';

import 'media/audioplayers/audioplayers.dart';
import 'media/chewie/chewie.dart';
import 'media/extended_image/extended_image.dart';
import 'media/file_picker/file_picker.dart';
import 'media/flick_video_player/flick_video_player.dart';
import 'media/flutter_svg/flutter_svg.dart';
import 'media/image_cropper/image_cropper.dart';
import 'media/image_picker/image_picker.dart';
import 'media/just_audio/just_audio.dart';
import 'media/pdf/pdf.dart';
import 'media/photo_view/photo_view.dart';
import 'media/video_player/video_player.dart';

import 'theme/flutter_neumorphic/flutter_neumorphic.dart';
import 'theme/getwidget/getwidget.dart';
import 'theme/styled_widget/styled_widget.dart';

import 'ui/animated_text_kit.dart';
import 'ui/animations/animations.dart';
import 'ui/carousel_slider/carousel_slider.dart';
import 'ui/flutter_spinkit/flutter_spinkit.dart';
import 'ui/google_fonts.dart';

class PackageDetailPage extends StatelessWidget {
  PackageDetailPage({
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

  // routeName路由映射
  final _routes = {
    // basics
    "package/basics/cupertino_icons": CupertinoIconsPage(),
    "package/basics/get": GetPage(),
    "package/basics/provider": ProviderPage(),
    "package/basics/dio": DioPage(),
    "package/basics/shared_preferences": SharedPreferencesPage(),
    "package/basics/webview_flutter": WebviewFlutterPage(),
    "package/basics/url_launcher": UrlLauncherPage(),
    "package/basics/connectivity_plus": ConnectivityPlusPage(),
    // chart
    "package/chart/fl_chart": FlChartPage(),
    "package/chart/syncfusion_flutter_charts": SyncfusionFlutterChartsPage(),
    "package/chart/charts_flutter": ChartsFlutterPage(),
    // media
    "package/media/image_picker": ImagePickerPage(),
    "package/media/flutter_svg": FlutterSvgPage(),
    "package/media/video_player": VideoPlayerPage(),
    "package/media/photo_view": PhotoViewPage(),
    "package/media/image_cropper": ImageCropperPage(),
    "package/media/pdf": PdfPage(),
    "package/media/extended_image": ExtendedImagePage(),
    "package/media/chewie": ChewiePage(),
    "package/media/flick_video_player": FlickVideoPlayerPage(),
    "package/media/audioplayers": AudioplayersPage(),
    "package/media/just_audio": JustAudioPage(),
    "package/media/file_picker": FilePickerPage(),
    // theme
    "package/theme/flutter_neumorphic": FlutterNeumorphicPage(),
    "package/theme/getwidget": GetwidgetPage(),
    "package/theme/styled_widget": StyledWidgetPage(),
    // ui
    "package/ui/google_fonts": GoogleFontsPage(),
    "package/ui/animated_text_kit": AnimatedTextKitPage(),
    "package/ui/animations": AnimationsPage(),
    "package/ui/carousel_slider": CarouselSliderPage(),
    "package/ui/flutter_spinkit": FlutterSpinkitPage(),
  };

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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 类名
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.description, color: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return InternalWebViewPage(title, detailPath);
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Consumer<LanguageProvider>(
                builder: (context, LanguageProvider languageProvider, _) =>
                    Text(
                  languageProvider.lang == "zh"
                      ? introductionCN
                      : introductionEN,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            // 介绍
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Row(
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return InternalWebViewPage(
                                  owner,
                                  ownerPath,
                                );
                              },
                            ),
                          );
                        },
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
                    ? GestureDetector(
                        child: Container(
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
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return InternalWebViewPage(
                                  "${apiResult.split('/')[apiResult.split('/').length - 1]}",
                                  apiResult,
                                );
                              },
                            ),
                          );
                        },
                      )
                    : Container(),
              ],
            ),
            // 示例
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Consumer<LanguageProvider>(
                builder: (context, LanguageProvider languageProvider, _) =>
                    Text(
                  languageProvider.lang == "zh" ? '示例' : 'Example',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 5,
              color: Colors.orange[100],
            ),
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 50),
              child: _routes[routeName],
            ),
          ],
        ),
      ),
    );
  }
}
