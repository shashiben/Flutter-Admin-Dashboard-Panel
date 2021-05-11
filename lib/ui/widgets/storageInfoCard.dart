import 'package:admin_dashboard/app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageInfoCard extends StatelessWidget {
  final String image;
  final String title;
  final String noOfFiles;
  final String size;

  const StorageInfoCard(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.noOfFiles,
      @required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          SizedBox(height: 20, width: 20, child: SvgPicture.asset("$image")),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "$noOfFiles Files",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: Colors.white70),
                )
              ],
            ),
          )),
          Text("$size GB")
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultPadding),
          border: Border.all(width: 2, color: primaryColor.withOpacity(0.15))),
      padding: const EdgeInsets.all(defaultPadding),
    );
  }
}
