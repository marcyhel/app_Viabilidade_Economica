import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Grafico extends StatefulWidget {
  List<dynamic> dados;
  Grafico({
    Key? key,
    required this.dados,
  }) : super(key: key);

  @override
  _GraficoState createState() => _GraficoState(dados);
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class _GraficoState extends State<Grafico> {
  List<dynamic> dados;
  _GraficoState(this.dados);
  List<dynamic> data3 = [
    _SalesData('3', -30),
    _SalesData('Feb2', 20),
    _SalesData('Mar2', 30),
    _SalesData('Apr2', 28),
    _SalesData('May2', 30),
    _SalesData('Jan1', 30),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black45, offset: Offset(2, 3), blurRadius: 10)
          ]),
      margin: EdgeInsets.all(10),
      child: SfCartesianChart(
          primaryXAxis: CategoryAxis(title: AxisTitle(text: 'Tempo (min)')),
          primaryYAxis: NumericAxis(
              title: AxisTitle(text: 'Velocidade de Infiltração (mm/h)')),
          // Chart title
          title: ChartTitle(text: 'Velocidade de Infiltração'),
          // Enable legend
          legend: Legend(
              isVisible: true,
              orientation: LegendItemOrientation.horizontal,
              position: LegendPosition.bottom),

          // Enable tooltip
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<dynamic, String>>[
            ColumnSeries<dynamic, String>(
              dataSource: dados.cast<dynamic>(),
              xValueMapper: (dynamic sales, _) => sales.year,
              yValueMapper: (dynamic sales, _) => sales.sales,
              name: 'Kostiakov',
              color: Colors.blueGrey,
              // Enable data label
              dataLabelSettings: DataLabelSettings(isVisible: false),
            ),
          ]),
    );
  }
}