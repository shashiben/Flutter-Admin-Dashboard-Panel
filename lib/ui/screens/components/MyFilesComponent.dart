import 'package:admin_dashboard/app/constants.dart';
import 'package:admin_dashboard/app/data.dart';
import 'package:admin_dashboard/ui/widgets/MyFilesWidget.dart';
import 'package:flutter/material.dart';

class MyFilesComponent extends StatelessWidget {
  const MyFilesComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding)),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
            shrinkWrap: true,
            itemCount: myFilesDemoData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.4,
                crossAxisCount: 4,
                crossAxisSpacing: defaultPadding),
            itemBuilder: (context, index) => MyFilesWidget(
                  cloudStorageInfo: myFilesDemoData[index],
                ))
      ],
    );
  }
}
