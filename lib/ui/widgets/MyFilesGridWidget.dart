import 'package:admin_dashboard/app/constants.dart';
import 'package:admin_dashboard/app/data.dart';
import 'package:flutter/material.dart';

import 'MyFilesWidget.dart';

class MyFilesGridWidget extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const MyFilesGridWidget(
      {Key key, this.crossAxisCount = 4, this.childAspectRatio = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: myFilesDemoData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: childAspectRatio,
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => MyFilesWidget(
              cloudStorageInfo: myFilesDemoData[index],
            ));
  }
}
