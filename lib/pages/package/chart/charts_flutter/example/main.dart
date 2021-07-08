import 'package:flutter/material.dart';

import 'area_and_line.dart';
import 'auto_label.dart';
import 'grouped.dart';
import 'horizontal.dart';
import 'numeric_line_bar.dart';
import 'percent_of_domain_by_category.dart';
import 'scatter_plot_line.dart';
import 'segments.dart';
import 'selection_callback_example.dart';
import 'simple.dart';
import 'simple_series_legend.dart';
import 'slider.dart';
import 'stacked.dart';
import 'stacked_area_custom_color.dart';

class ChartsFlutterExamplePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ChartsFlutterExamplePage({Key? key}) : super(key: key);

  @override
  _ChartsFlutterExamplePageState createState() =>
      _ChartsFlutterExamplePageState();
}

class _ChartsFlutterExamplePageState extends State<ChartsFlutterExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: AreaAndLineChart.withSampleData(),
            ),
            Container(
              height: 300,
              child: StackedAreaCustomColorLineChart.withSampleData(),
            ),
            Container(
              height: 300,
              child: SegmentsLineChart.withSampleData(),
            ),
            Container(
              height: 300,
              child: GroupedBarChart.withSampleData(),
            ),
            Container(
              height: 300,
              child: HorizontalBarChart.withSampleData(),
            ),
            Container(
              height: 300,
              child: StackedBarChart.withSampleData(),
            ),
            Container(
              height: 300,
              child: PercentOfDomainByCategoryBarChart.withSampleData(),
            ),
            Container(
              height: 300,
              child: SelectionCallbackExample.withSampleData(),
            ),
            Container(
              height: 300,
              child: SliderLine.withSampleData(),
            ),
            Container(
              height: 300,
              child: NumericComboLineBarChart.withSampleData(),
            ),
            Container(
              height: 300,
              child: ScatterPlotComboLineChart.withSampleData(),
            ),
            Container(
              height: 300,
              child: SimpleSeriesLegend.withSampleData(),
            ),
            Container(
              height: 300,
              child: SimplePieChart.withSampleData(),
            ),
            // Container(
            //   height: 300,
            //   child: DonutAutoLabelChart.withSampleData(),
            // ),
          ],
        ),
      ),
    );
  }
}
