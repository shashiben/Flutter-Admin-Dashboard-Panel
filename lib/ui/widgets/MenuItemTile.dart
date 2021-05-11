import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onPressed;

  const DrawerListTile(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: SvgPicture.asset(
        image,
        color: Colors.white54,
        height: 16,
      ),
      horizontalTitleGap: 0,
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
