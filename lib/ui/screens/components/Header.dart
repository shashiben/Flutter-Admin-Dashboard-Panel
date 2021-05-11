import 'package:admin_dashboard/ui/widgets/ProfileCard.dart';
import 'package:admin_dashboard/ui/widgets/SearchField.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(
          flex: 2,
        ),
        Expanded(child: SearchField()),
        ProfileCard()
      ],
    );
  }
}
