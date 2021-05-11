import 'package:admin_dashboard/app/constants.dart';
import 'package:flutter/material.dart';

import 'Header.dart';

class DashboardCoreComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [Header()],
        ),
      ),
    );
  }
}
