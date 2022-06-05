import 'package:dashboard_admin/screens/dashboard/components/header.dart';
import 'package:dashboard_admin/screens/task/components/slide_right.dart';
import 'package:flutter/material.dart';
import '../../constrants.dart';
import '../../responsive.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    print(_size.width);
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
                      if (Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) const SlideRight(),
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
                if (!Responsive.isMobile(context) && _size.width >= 1020)
                  const Expanded(
                    flex: 2,
                    child: SlideRight(),
                  ),
                if (_size.width < 1020 && _size.width > 850)
                  const Expanded(
                    flex: 3,
                    child: SlideRight(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
