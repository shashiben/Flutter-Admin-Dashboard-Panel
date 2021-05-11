import 'package:admin_dashboard/app/constants.dart';
import 'package:admin_dashboard/app/responsive.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(color: Colors.white10),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(
          vertical: defaultPadding / 2, horizontal: defaultPadding),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(defaultPadding / 2),
              child: Image.asset("assets/images/profile_pic.jpg", height: 30)),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Lucy Heartfilia"),
            ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
