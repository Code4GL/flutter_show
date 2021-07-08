import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class SyncfusionFlutterChartsExamplePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SyncfusionFlutterChartsExamplePage({Key? key}) : super(key: key);

  @override
  _SyncfusionFlutterChartsExamplePageState createState() =>
      _SyncfusionFlutterChartsExamplePageState();
}

class _SyncfusionFlutterChartsExamplePageState
    extends State<SyncfusionFlutterChartsExamplePage> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40),
  ];
  List<_PieData> pieData = [
    _PieData('Jan', 35, 'A'),
    _PieData('Feb', 28, 'B'),
    _PieData('Mar', 34, 'C'),
    _PieData('Apr', 32, 'D'),
    _PieData('May', 40, 'E'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Initialize the chart widget
            SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              // Chart title
              title: ChartTitle(text: 'SfCartesianChart'),
              // Enable legend
              legend: Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                  dataSource: data,
                  xValueMapper: (_SalesData sales, _) => sales.year,
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  name: 'Sales',
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                )
              ],
            ),
            SfCircularChart(
              title: ChartTitle(text: 'SfCircularChart'),
              legend: Legend(isVisible: true),
              series: <PieSeries<_PieData, String>>[
                PieSeries<_PieData, String>(
                  explode: true,
                  explodeIndex: 0,
                  dataSource: pieData,
                  xValueMapper: (_PieData data, _) => data.xData,
                  yValueMapper: (_PieData data, _) => data.yData,
                  dataLabelMapper: (_PieData data, _) => data.text,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
              ],
            ),
            SfPyramidChart(
              title: ChartTitle(text: 'SfPyramidChart'),
              legend: Legend(isVisible: true),
              series: PyramidSeries<_PieData, String>(
                explode: true,
                dataSource: pieData,
                xValueMapper: (_PieData data, _) => data.xData,
                yValueMapper: (_PieData data, _) => data.yData,
              ),
            ),
            SfFunnelChart(
              title: ChartTitle(text: 'SfFunnelChart'),
              legend: Legend(isVisible: true),
              series: FunnelSeries<_PieData, String>(
                explode: true,
                dataSource: pieData,
                xValueMapper: (_PieData data, _) => data.xData,
                yValueMapper: (_PieData data, _) => data.yData,
                dataLabelSettings: DataLabelSettings(isVisible: true),
              ),
            ),
            SfSparkLineChart.custom(
              //Enable the trackball
              trackball: SparkChartTrackball(
                  activationMode: SparkChartActivationMode.tap),
              //Enable marker
              marker: SparkChartMarker(
                  displayMode: SparkChartMarkerDisplayMode.all),
              //Enable data label
              labelDisplayMode: SparkChartLabelDisplayMode.all,
              xValueMapper: (int index) => data[index].year,
              yValueMapper: (int index) => data[index].sales,
              dataCount: 5,
            ),
            SfSparkAreaChart.custom(
              dataCount: 5,
              xValueMapper: (int index) => data[index].year,
              yValueMapper: (int index) => data[index].sales,
            ),
            SfSparkBarChart.custom(
              dataCount: 5,
              xValueMapper: (int index) => data[index].year,
              yValueMapper: (int index) => data[index].sales,
            ),
          ],
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text = '']);
  final String xData;
  final num yData;
  final String text;
}
