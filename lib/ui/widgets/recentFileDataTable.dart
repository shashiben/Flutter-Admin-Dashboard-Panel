import 'package:admin_dashboard/app/constants.dart';
import 'package:admin_dashboard/app/data.dart';
import 'package:admin_dashboard/core/models/RecentFiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                columns: [
                  DataColumn(label: Text("File Name")),
                  DataColumn(label: Text("Data")),
                  DataColumn(label: Text("Size"))
                ],
                rows: List.generate(recentFilesData.length,
                    (index) => recentFileData(recentFilesData[index]))),
          )
        ],
      ),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
    );
  }

  DataRow recentFileData(RecentFile recentFile) {
    return DataRow(cells: [
      DataCell(Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(recentFile.icon),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(recentFile.title),
          )
        ],
      )),
      DataCell(Text(recentFile.date)),
      DataCell(Text(recentFile.size))
    ]);
  }
}
