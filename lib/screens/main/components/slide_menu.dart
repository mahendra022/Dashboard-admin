import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/flutter_svg.dart';

int _selectedIndex = 0;

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final profile = dotenv.get('PHOTO_PROFILE');

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green.withOpacity(0.1),
      elevation: 0.0,
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                margin: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 30.0),
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
                      Text(
                        'Mahendra',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text('Senior Frontend Developer',
                          style: TextStyle(
                            fontSize: 12.0,
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
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
          ),
          DrawerListTile(
            title: "My Task",
            selected: 1,
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
          ),
          DrawerListTile(
            title: "Project",
            selected: 2,
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
          ),
          DrawerListTile(
            title: "Transaction",
            selected: 3,
            svgSrc: "assets/icons/menu_tran.svg",
            trailing: Container(
              decoration: const BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
              child: const Text('5',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 7.0,
                      fontWeight: FontWeight.w500)),
            ),
            press: () {
              setState(() {
                _selectedIndex = 3;
              });
            },
          ),
          DrawerListTile(
            selected: 4,
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              setState(() {
                _selectedIndex = 4;
              });
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key,
      // For selecting those three line once press "Command+D"
      required this.title,
      required this.svgSrc,
      required this.press,
      required this.selected,
      this.trailing})
      : super(key: key);

  final String title, svgSrc;
  final Widget? trailing;
  final int selected;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _selectedIndex == selected
              ? Container(
                  height: 40.0,
                  width: 4.0,
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
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
                    color: _selectedIndex != selected
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
                  style: _selectedIndex != selected
                      ? const TextStyle(color: Colors.black38, fontSize: 13.0)
                      : const TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
