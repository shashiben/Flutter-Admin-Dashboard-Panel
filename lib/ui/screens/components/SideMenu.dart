import 'package:flutter/material.dart';

import '../../widgets/MenuItemTile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/images/logo.png")),
            DrawerListTile(
              onPressed: () {},
              image: "assets/icons/menu_dashboard.svg",
              title: "Dashboard",
            ),
            DrawerListTile(
              onPressed: () {},
              image: "assets/icons/menu_tran.svg",
              title: "Transactions",
            ),
            DrawerListTile(
              onPressed: () {},
              image: "assets/icons/menu_tran.svg",
              title: "Task",
            ),
            DrawerListTile(
              onPressed: () {},
              image: "assets/icons/menu_doc.svg",
              title: "Documents",
            ),
            DrawerListTile(
              onPressed: () {},
              image: "assets/icons/menu_store.svg",
              title: "Store",
            ),
            DrawerListTile(
              onPressed: () {},
              image: "assets/icons/menu_notification.svg",
              title: "Notifications",
            ),
            DrawerListTile(
              onPressed: () {},
              image: "assets/icons/menu_profile.svg",
              title: "Profile",
            ),
            DrawerListTile(
              onPressed: () {},
              image: "assets/icons/menu_setting.svg",
              title: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
