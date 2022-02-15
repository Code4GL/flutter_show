import 'radar_chart/radar_chart_page.dart';
import 'scatter_chart/scatter_chart_page.dart';
import 'package:flutter/material.dart';

import 'bar_chart/bar_chart_page.dart';
import 'bar_chart/bar_chart_page2.dart';
import 'bar_chart/bar_chart_page3.dart';
import 'line_chart/line_chart_page.dart';
import 'line_chart/line_chart_page2.dart';
import 'line_chart/line_chart_page3.dart';
import 'line_chart/line_chart_page4.dart';
import 'pie_chart/pie_chart_page.dart';
import 'utils/platform_info.dart';

class FlChartExamplePage extends StatefulWidget {
  const FlChartExamplePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _FlChartExamplePageState createState() => _FlChartExamplePageState(title);
}

class _FlChartExamplePageState extends State<FlChartExamplePage> {
  String title;

  _FlChartExamplePageState(this.title);
  int _currentPage = 0;

  final _controller = PageController(initialPage: 0);
  final _duration = Duration(milliseconds: 300);
  final _curve = Curves.easeInOutCubic;
  final _pages = [
    LineChartPage(),
    BarChartPage(),
    BarChartPage2(),
    PieChartPage(),
    LineChartPage2(),
    LineChartPage3(),
    LineChartPage4(),
    BarChartPage3(),
    ScatterChartPage(),
    RadarChartPage(),
  ];

  bool get isDesktopOrWeb =>
      PlatformInfo().isDesktopOS() || PlatformInfo().isWeb();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: PageView(
          physics: isDesktopOrWeb
              ? NeverScrollableScrollPhysics()
              : AlwaysScrollableScrollPhysics(),
          controller: _controller,
          children: _pages,
        ),
      ),
      bottomNavigationBar: isDesktopOrWeb
          ? Container(
              padding: EdgeInsets.all(16),
              color: Colors.transparent,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Visibility(
                    visible: _currentPage != 0,
                    child: FloatingActionButton(
                      onPressed: () => _controller.previousPage(
                          duration: _duration, curve: _curve),
                      child: Icon(Icons.chevron_left_rounded),
                    ),
                  ),
                  Spacer(),
                  Visibility(
                    visible: _currentPage != _pages.length - 1,
                    child: FloatingActionButton(
                      onPressed: () => _controller.nextPage(
                          duration: _duration, curve: _curve),
                      child: Icon(Icons.chevron_right_rounded),
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
