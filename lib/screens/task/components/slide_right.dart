import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constrants.dart';
import '../../../responsive.dart';

class SlideRight extends StatelessWidget {
  const SlideRight({
    Key? key,
  }) : super(key: key);

  header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Today's Schedule",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        Container(
          height: 28.0,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Row(children: [
            Container(
              padding: const EdgeInsets.all(7.0),
              child: SvgPicture.asset(
                "assets/icons/menu_dashbord.svg",
                color: Colors.black45,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                "assets/icons/date.svg",
              ),
            ),
          ]),
        )
      ],
    );
  }

  discoveryCall() {
    return Container(
      margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('30 minute call with Client',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Project Discovery Call',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600))
                ],
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: SizedBox(
                    height: 14.0,
                    child: Icon(
                      Icons.add,
                      color: Colors.blue[700]!,
                      size: 16.0,
                    ),
                  ),
                  label: Text(
                    'Invite',
                    style: TextStyle(
                        color: Colors.blue[700]!,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          const SizedBox(height: 30.0),
          Container(
            height: 60.0,
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: const BorderRadius.all(Radius.circular(8.0))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '28:35',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w100),
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        child: Icon(
                          Icons.phone_in_talk_outlined,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      SizedBox(
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ),
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }

  project() {
    return Container(
      margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Design Project',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                child: Icon(
                  Icons.more_horiz,
                  color: ColorApp.primaryColor!.withOpacity(0.7),
                  size: 25.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(3.0),
                child: SvgPicture.asset(
                  "assets/icons/fire.svg",
                  color: ColorApp.primaryColor!.withOpacity(0.7),
                  height: 15.0,
                ),
              ),
              Text('In Progress',
                  style: TextStyle(
                      color: ColorApp.primaryColor!.withOpacity(0.7),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Completed',
                      style: TextStyle(
                          color: ColorApp.primaryColor!.withOpacity(0.7),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Stack(
                    children: [
                      Positioned(
                          top: 0,
                          left: 30.0,
                          child: SizedBox(
                              height: 7.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.green[200],
                              ))),
                      const SizedBox(
                        width: 60,
                        child: Text('114',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('In Progress',
                      style: TextStyle(
                          color: ColorApp.primaryColor!.withOpacity(0.7),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Stack(
                    children: const [
                      Positioned(
                          top: 0,
                          left: 15.0,
                          child: SizedBox(
                              height: 7.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.pink,
                              ))),
                      SizedBox(
                        width: 60,
                        child: Text('24',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Team members',
                      style: TextStyle(
                          color: ColorApp.primaryColor!.withOpacity(0.7),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Stack(
                    children: [
                      Positioned(
                          top: 0,
                          left: 30.0,
                          child: SizedBox(
                              height: 7.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.green[200],
                              ))),
                      const SizedBox(
                        width: 60,
                        child: Text('114',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w900)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Responsive.isDesktop(context)
          ? const EdgeInsets.only(right: defaultPadding, top: 27.0)
          : const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          discoveryCall(),
          Divider(
            indent: 5.0,
            endIndent: 5.0,
            color: Colors.pink.withOpacity(0.090),
          ),
          project(),
          Divider(
            indent: 5.0,
            endIndent: 5.0,
            color: Colors.pink.withOpacity(0.090),
          ),
        ],
      ),
    );
  }
}
