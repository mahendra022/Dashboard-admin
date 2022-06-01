import 'package:dashboard_admin/app/controllers/routes_controller.dart';
import 'package:dashboard_admin/utilities/widget/presentage_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../responsive.dart';

class Header extends StatelessWidget {
  Header({
    Key? key,
  }) : super(key: key);

  final _controller = Get.put(RoutesController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Row(
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: _controller.controlMenu,
            ),
          if (!Responsive.isMobile(context))
            const Text(
              "Hi Mahendra!",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          if (!Responsive.isMobile(context))
            Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '15% task completed',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.pink[300]!,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              const PresentageBarApp(
                widthBar: 15.0,
                width: 100.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
