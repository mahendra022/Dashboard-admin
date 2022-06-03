import 'package:dashboard_admin/screens/dashboard/components/header.dart';
import 'package:flutter/material.dart';

import '../../constrants.dart';
import '../../responsive.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Header(),
                      const MyFiles(),
                      const RecentFiles(),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) const StarageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height,
                    width: 0.1,
                  ),
                if (Responsive.isDesktop(context))
                  const SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StarageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
