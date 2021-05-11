import 'package:admin_dashboard/app/responsive.dart';
import 'package:admin_dashboard/core/controllers/menu_controller.dart';
import 'package:admin_dashboard/ui/widgets/ProfileCard.dart';
import 'package:admin_dashboard/ui/widgets/SearchField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: context.read<MenuController>().controlMenu),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(child: SearchField()),
        ProfileCard()
      ],
    );
  }
}
