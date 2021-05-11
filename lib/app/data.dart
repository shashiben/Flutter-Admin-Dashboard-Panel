import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

List<PieChartSectionData> pieCharSelectionData = [
  PieChartSectionData(
      value: 25, color: primaryColor, radius: 25, showTitle: false),
  PieChartSectionData(
      value: 20, color: Color(0xFF26E5FF), radius: 22, showTitle: false),
  PieChartSectionData(
      value: 10, color: Color(0xFFFFCF26), radius: 19, showTitle: false),
  PieChartSectionData(
      value: 15, color: Color(0xFFEE2727), radius: 16, showTitle: false),
  PieChartSectionData(
      value: 25,
      color: primaryColor.withOpacity(0.1),
      radius: 13,
      showTitle: false),
];
