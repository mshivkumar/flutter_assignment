/// Package import
import 'package:flutter/material.dart';

/// Chart import
import 'package:syncfusion_flutter_charts/charts.dart';

/// Renders the default numeric axis sample.
class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getChart();
  }

  /// Returns the Cartesian chart with default numeric x and y axis.
  SfCartesianChart getChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      margin: EdgeInsets.zero,
      legend: Legend(isVisible: true, position: LegendPosition.top),

      /// X axis as numeric axis placed here.
      primaryXAxis: NumericAxis(
          minimum: 0,
          maximum: 10,
          interval: 2,
          labelFormat: '{value} PM',
          majorGridLines: MajorGridLines(width: 0),
          majorTickLines: MajorTickLines(size: 0),
          edgeLabelPlacement: EdgeLabelPlacement.hide),
      primaryYAxis: NumericAxis(
          title: AxisTitle(
              text: 'Peak Occupancy (%)',
              textStyle: TextStyle(fontSize: 14, color: Colors.grey)),
          axisLine: AxisLine(width: 0),
          majorTickLines: MajorTickLines(size: 0)),
      series: getDefaultNumericSeries(),
      tooltipBehavior: TooltipBehavior(
          enable: false, format: 'Score: point.y', canShowMarker: false),
    );
  }

  /// Returns the list of Chart series
  /// which need to render on the default numeric axis.
  List<ColumnSeries<ChartSampleData, num>> getDefaultNumericSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(xValue: 1, yValue: 30, secondSeriesYValue: 10),
      ChartSampleData(xValue: 3, yValue: 20, secondSeriesYValue: 40),
      ChartSampleData(xValue: 5, yValue: 60, secondSeriesYValue: 40),
      ChartSampleData(xValue: 7, yValue: 30, secondSeriesYValue: 80),
      ChartSampleData(xValue: 9, yValue: 60, secondSeriesYValue: 40)
    ];
    return <ColumnSeries<ChartSampleData, num>>[
      ///first series named "Today".
      ColumnSeries<ChartSampleData, num>(
          dataSource: chartData,
          color: const Color.fromRGBO(0, 0, 0, 1),
          name: 'Today',
          xValueMapper: (ChartSampleData sales, _) => sales.xValue,
          yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue),

      ///second series named "Previous Weeks".
      ColumnSeries<ChartSampleData, num>(
          dataSource: chartData,
          color: const Color.fromRGBO(211, 211, 211, 1),
          xValueMapper: (ChartSampleData sales, _) => sales.xValue,
          yValueMapper: (ChartSampleData sales, _) => sales.yValue,
          name: 'Previous Weeks'),
    ];
  }
}

///Chart sample data
class ChartSampleData {
  /// Holds the datapoint values like x, y, etc.,
  ChartSampleData(
      {this.x,
      this.y,
      this.xValue,
      this.yValue,
      this.secondSeriesYValue,
      this.thirdSeriesYValue,
      this.pointColor,
      this.size,
      this.text,
      this.open,
      this.close,
      this.low,
      this.high,
      this.volume});

  /// Holds x value of the datapoint
  final dynamic x;

  /// Holds y value of the datapoint
  final num y;

  /// Holds x value of the datapoint
  final dynamic xValue;

  /// Holds y value of the datapoint
  final num yValue;

  /// Holds y value of the datapoint(for 2nd series)
  final num secondSeriesYValue;

  /// Holds y value of the datapoint(for 3nd series)
  final num thirdSeriesYValue;

  /// Holds point color of the datapoint
  final Color pointColor;

  /// Holds size of the datapoint
  final num size;

  /// Holds datalabel/text value mapper of the datapoint
  final String text;

  /// Holds open value of the datapoint
  final num open;

  /// Holds close value of the datapoint
  final num close;

  /// Holds low value of the datapoint
  final num low;

  /// Holds high value of the datapoint
  final num high;

  /// Holds open value of the datapoint
  final num volume;
}
