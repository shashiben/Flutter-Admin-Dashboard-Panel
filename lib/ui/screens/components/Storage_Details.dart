import 'package:admin_dashboard/app/constants.dart';
import 'package:admin_dashboard/ui/widgets/PieChart.dart';
import 'package:admin_dashboard/ui/widgets/storageInfoCard.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          PieChartWidget(),
          StorageInfoCard(
            noOfFiles: "4504",
            size: "4.45",
            image: "assets/icons/Documents.svg",
            title: "Document Files",
          ),
          StorageInfoCard(
            noOfFiles: "4504",
            size: "4.45",
            image: "assets/icons/media.svg",
            title: "Media Files",
          ),
          StorageInfoCard(
            noOfFiles: "4504",
            size: "4.45",
            image: "assets/icons/folder.svg",
            title: "Other Files",
          ),
          StorageInfoCard(
            noOfFiles: "4504",
            size: "4.45",
            image: "assets/icons/unknown.svg",
            title: "Unknown",
          )
        ],
      ),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }
}
