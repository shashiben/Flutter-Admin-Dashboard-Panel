import 'package:admin_dashboard/ui/screens/components/Dashboard_Core_Part.dart';
import 'package:admin_dashboard/ui/screens/components/SideMenu.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: SideMenu()),
          Expanded(
            child: DashboardCoreComponent(),
            flex: 5,
          )
        ],
      )),
    );
  }
}
