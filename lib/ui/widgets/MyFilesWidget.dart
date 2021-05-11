import 'package:admin_dashboard/app/constants.dart';
import 'package:admin_dashboard/core/models/CloudStorage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFilesWidget extends StatelessWidget {
  final CloudStorageInfo cloudStorageInfo;
  const MyFilesWidget({Key key, @required this.cloudStorageInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cloudStorageInfo.color.withOpacity(0.1)),
                child: SvgPicture.asset(
                  cloudStorageInfo.svgSrc,
                  color: cloudStorageInfo.color,
                ),
              ),
              InkWell(
                  child: Icon(Icons.more_vert, color: Colors.white54),
                  onTap: () {}),
            ],
          ),
          Text(
            cloudStorageInfo.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(
                    color: cloudStorageInfo.color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
              ),
              LayoutBuilder(
                  builder: (context, boxConstraints) => Container(
                        width: boxConstraints.maxWidth *
                            (cloudStorageInfo.percentage / 100),
                        height: 5,
                        decoration: BoxDecoration(
                            color: cloudStorageInfo.color,
                            borderRadius: BorderRadius.circular(10)),
                      ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${cloudStorageInfo.numOfFiels} Files",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.white70),
              ),
              Text(
                "${cloudStorageInfo.totalStorage}",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
