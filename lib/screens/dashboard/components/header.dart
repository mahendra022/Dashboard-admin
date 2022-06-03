import 'package:dashboard_admin/app/controllers/routes_controller.dart';
import 'package:dashboard_admin/utilities/widget/presentage_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constrants.dart';
import '../../../responsive.dart';

class Header extends StatelessWidget {
  Header({
    Key? key,
  }) : super(key: key);

  final _controller = Get.put(RoutesController());

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      padding: Responsive.isMobile(context)
          ? const EdgeInsets.only(top: 12.0, bottom: 12.0, right: 16.0)
          : const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (!Responsive.isDesktop(context))
                IconButton(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  padding: _size.width < 845
                      ? const EdgeInsets.only(left: defaultPadding)
                      : EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(Icons.menu),
                  onPressed: _controller.controlMenu,
                ),
              if (_size.width < 1100) const SizedBox(width: defaultPadding),
              const Text(
                "Hi Mahendra!",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          if (!Responsive.isMobile(context))
            Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isMobile(context))
                Text(
                  '40% task completed',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.pink[300]!,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(
                width: 10.0,
              ),
              if (!Responsive.isMobile(context))
                const PresentageBarApp(
                  widthBar: 60.0,
                  width: 100.0,
                ),
              if (Responsive.isMobile(context))
                const PresentageBarApp(
                  widthBar: 40.0,
                  width: 100.0,
                  height: 13.0,
                  textSize: 9.0,
                ),
            ],
          )
        ],
      ),
    );
  }
}
