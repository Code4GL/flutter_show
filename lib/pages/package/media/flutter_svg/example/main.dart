import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

const List<String> _assetNames = <String>[
  // 'assets/images/package/flutter_svg/notfound.svg', // uncomment to test an asset that doesn't exist.
  'assets/images/package/flutter_svg/flutter_logo.svg',
  'assets/images/package/flutter_svg/dart.svg',
  'assets/images/package/flutter_svg/simple/clip_path_3.svg',
  'assets/images/package/flutter_svg/simple/clip_path_2.svg',
  'assets/images/package/flutter_svg/simple/clip_path.svg',
  'assets/images/package/flutter_svg/simple/fill-rule-inherit.svg',
  'assets/images/package/flutter_svg/simple/group_fill_opacity.svg',
  'assets/images/package/flutter_svg/simple/group_opacity.svg',
  'assets/images/package/flutter_svg/simple/text.svg',
  'assets/images/package/flutter_svg/simple/text_2.svg',
  'assets/images/package/flutter_svg/simple/linear_gradient.svg',
  'assets/images/package/flutter_svg/simple/linear_gradient_2.svg',
  'assets/images/package/flutter_svg/simple/male.svg',
  'assets/images/package/flutter_svg/simple/radial_gradient.svg',
  'assets/images/package/flutter_svg/simple/rect_rrect.svg',
  'assets/images/package/flutter_svg/simple/rect_rrect_no_ry.svg',
  'assets/images/package/flutter_svg/simple/style_attr.svg',
  'assets/images/package/flutter_svg/w3samples/aa.svg',
  'assets/images/package/flutter_svg/w3samples/alphachannel.svg',
  'assets/images/package/flutter_svg/simple/ellipse.svg',
  'assets/images/package/flutter_svg/simple/dash_path.svg',
  'assets/images/package/flutter_svg/simple/nested_group.svg',
  'assets/images/package/flutter_svg/simple/stroke_inherit_circles.svg',
  'assets/images/package/flutter_svg/simple/use_circles.svg',
  'assets/images/package/flutter_svg/simple/use_opacity_grid.svg',
  'assets/images/package/flutter_svg/wikimedia/chess_knight.svg',
  'assets/images/package/flutter_svg/wikimedia/Ghostscript_Tiger.svg',
  'assets/images/package/flutter_svg/wikimedia/Firefox_Logo_2017.svg',
];

/// Assets treated as "icons" - using a color filter to render differently.
const List<String> iconNames = <String>[
  'assets/images/package/flutter_svg/deborah_ufw/new-action-expander.svg',
  'assets/images/package/flutter_svg/deborah_ufw/new-camera.svg',
  'assets/images/package/flutter_svg/deborah_ufw/new-gif-button.svg',
  'assets/images/package/flutter_svg/deborah_ufw/new-gif.svg',
  'assets/images/package/flutter_svg/deborah_ufw/new-image.svg',
  'assets/images/package/flutter_svg/deborah_ufw/new-mention.svg',
  'assets/images/package/flutter_svg/deborah_ufw/new-pause-button.svg',
  'assets/images/package/flutter_svg/deborah_ufw/new-play-button.svg',
  'assets/images/package/flutter_svg/deborah_ufw/new-send-circle.svg',
  'assets/images/package/flutter_svg/deborah_ufw/numeric_25.svg',
];

/// Assets to test network access.
const List<String> uriNames = <String>[
  'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg',
  'https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/410.svg',
  'https://upload.wikimedia.org/wikipedia/commons/b/b4/Chess_ndd45.svg',
];

class FlutterSvgExamplePage extends StatefulWidget {
  const FlutterSvgExamplePage({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  _FlutterSvgExamplePageState createState() => _FlutterSvgExamplePageState();
}

class _FlutterSvgExamplePageState extends State<FlutterSvgExamplePage> {
  final List<Widget> _painters = <Widget>[];
  late double _dimension;

  @override
  void initState() {
    super.initState();
    _dimension = 203.0;
    for (String assetName in _assetNames) {
      _painters.add(
        SvgPicture.asset(assetName),
      );
    }

    for (int i = 0; i < iconNames.length; i++) {
      _painters.add(
        Directionality(
          textDirection: TextDirection.ltr,
          child: SvgPicture.asset(
            iconNames[i],
            color: Colors.blueGrey[(i + 1) * 100],
            matchTextDirection: true,
          ),
        ),
      );
    }

    for (String uriName in uriNames) {
      _painters.add(
        SvgPicture.network(
          uriName,
          placeholderBuilder: (BuildContext context) => Container(
              padding: const EdgeInsets.all(30.0),
              child: const CircularProgressIndicator()),
        ),
      );
    }
    // Shows an example of an SVG image that will fetch a raster image from a URL.
    _painters.add(SvgPicture.string('''<svg viewBox="0 0 200 200"
  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
  <image xlink:href="https://mdn.mozillademos.org/files/6457/mdn_logo_only_color.png" height="200" width="200"/>
</svg>'''));
    _painters.add(AvdPicture.asset(
        'assets/images/package/flutter_svg/android_vd/battery_charging.xml'));
  }

  @override
  Widget build(BuildContext context) {
    if (_dimension > MediaQuery.of(context).size.width - 10.0) {
      _dimension = MediaQuery.of(context).size.width - 10.0;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: <Widget>[
        Slider(
            min: 5.0,
            max: MediaQuery.of(context).size.width - 10.0,
            value: _dimension,
            onChanged: (double val) {
              setState(() => _dimension = val);
            }),
        Expanded(
          child: GridView.extent(
            shrinkWrap: true,
            maxCrossAxisExtent: _dimension,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: _painters.toList(),
          ),
        ),
      ]),
    );
  }
}
