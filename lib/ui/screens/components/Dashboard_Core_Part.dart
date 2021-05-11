import 'package:admin_dashboard/app/constants.dart';
import 'package:admin_dashboard/ui/widgets/recentFileDataTable.dart';
import 'package:flutter/material.dart';

import 'Header.dart';
import 'MyFilesComponent.dart';
import 'Storage_Details.dart';

class DashboardCoreComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFilesComponent(),
                      SizedBox(height: defaultPadding),
                      RecentFiles()
                    ],
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
