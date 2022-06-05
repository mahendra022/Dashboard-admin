import 'package:dashboard_admin/screens/dashboard/dashboard.dart';
import 'package:dashboard_admin/screens/setting/setting.dart';
import 'package:dashboard_admin/screens/task/task.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutesController extends GetxController {
  RxInt drawerSelected = 1.obs;
  List drawerMenu = const [DashboardScreen(), TaskScreen(), SettingScreen()];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  set setDrawerSelected(int index) {
    drawerSelected.value = index;
  }
}
