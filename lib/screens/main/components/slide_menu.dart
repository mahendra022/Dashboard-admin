import 'package:dashboard_admin/app/controllers/routes_controller.dart';
import 'package:dashboard_admin/constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
    required RoutesController controller,
  })  : _controller = controller,
        super(key: key);

  final RoutesController _controller;
  final profile = dotenv.get('PHOTO_PROFILE');

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0.0,
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                margin: const EdgeInsets.only(
                    left: 30.0, top: 30.0, bottom: 30.0, right: 10.0),
                child: ClipRRect(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(100.0)),
                    child: Image.network(
                      profile,
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahendra',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text('Senior Frontend',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.7),
                          ))
                    ]),
              )
            ],
          ),
          Container(
              margin: const EdgeInsets.only(left: 30.0),
              child: const Text('Menu',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink))),
          DrawerListTile(
            title: "Dashboard",
            selected: 0,
            controller: _controller,
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              _controller.setDrawerSelected = 0;
            },
          ),
          DrawerListTile(
            title: "My Task",
            selected: 1,
            controller: _controller,
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              _controller.setDrawerSelected = 1;
            },
          ),
          DrawerListTile(
            title: "Project",
            selected: 2,
            controller: _controller,
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              _controller.setDrawerSelected = 2;
            },
          ),
          DrawerListTile(
            title: "Transaction",
            selected: 3,
            controller: _controller,
            svgSrc: "assets/icons/menu_tran.svg",
            trailing: 3,
            press: () {
              _controller.setDrawerSelected = 3;
            },
          ),
          DrawerListTile(
            selected: 4,
            title: "Settings",
            controller: _controller,
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              _controller.setDrawerSelected = 4;
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
    required this.selected,
    this.trailing,
    required RoutesController controller,
  })  : _controller = controller,
        super(key: key);

  final String title, svgSrc;
  final int? trailing;
  final int selected;
  final VoidCallback press;
  final RoutesController _controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: press,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _controller.drawerSelected.value == selected
                  ? Container(
                      height: 40.0,
                      width: 4.0,
                      decoration: BoxDecoration(
                        color: ColorApp.primaryColor,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0)),
                      ),
                    )
                  : const SizedBox(
                      width: 4.0,
                    ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 25.0),
                      child: SvgPicture.asset(
                        svgSrc,
                        color: _controller.drawerSelected.value != selected
                            ? Colors.black38
                            : Colors.pink,
                        height: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      title,
                      style: _controller.drawerSelected.value != selected
                          ? const TextStyle(
                              color: Colors.black38, fontSize: 13.0)
                          : const TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              trailing != null && trailing != 0
                  ? Container(
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4.0),
                            bottomRight: Radius.circular(4.0),
                            bottomLeft: Radius.circular(4.0)),
                      ),
                      margin: const EdgeInsets.only(right: 30.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7.0, vertical: 2.0),
                      child: Text('$trailing',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600)),
                    )
                  : const SizedBox()
            ],
          ),
        ));
  }
}
