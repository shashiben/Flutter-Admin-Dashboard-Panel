import 'package:admin_dashboard/core/models/CloudStorage.dart';
import 'package:admin_dashboard/core/models/RecentFiles.dart';
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

List<CloudStorageInfo> myFilesDemoData = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiels: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiels: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];

List recentFilesData = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Documetns",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFile(
    icon: "assets/icons/pdf_file.svg",
    title: "Sals PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/icons/excle_file.svg",
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
