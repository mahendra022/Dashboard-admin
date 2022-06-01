import 'package:get/get.dart';

import 'controllers/routes_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoutesController>(() => RoutesController());
  }
}
