import 'package:admin_dashboard/app/constants.dart';
import 'package:admin_dashboard/app/data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              sections: pieCharSelectionData,
              startDegreeOffset: -90)),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: defaultPadding),
              Text("29.1",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5)),
              Text("of 128GB")
            ],
          ))
        ],
      ),
    );
  }
}
