import 'package:dashboard_admin/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/controllers/routes_controller.dart';
import '../../responsive.dart';
import 'components/slide_menu.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final _controller = Get.put(RoutesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideMenu(
        controller: _controller,
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(
                  controller: _controller,
                ),
              ),
            Obx(() => Expanded(
                  // It takes 5/6 part of the screen
                  flex: 4,
                  child: _controller.drawerMenu
                      .elementAt(_controller.drawerSelected.value),
                )),
          ],
        ),
      ),
    );
  }
}
