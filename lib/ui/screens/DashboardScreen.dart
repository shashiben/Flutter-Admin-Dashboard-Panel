import 'package:admin_dashboard/app/responsive.dart';
import 'package:admin_dashboard/core/controllers/menu_controller.dart';
import 'package:admin_dashboard/ui/screens/components/Dashboard_Core_Part.dart';
import 'package:admin_dashboard/ui/screens/components/SideMenu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      key: context.read<MenuController>().scaffoldKey,
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
          Expanded(
            child: DashboardCoreComponent(),
            flex: 5,
          )
        ],
      )),
    );
  }
}
