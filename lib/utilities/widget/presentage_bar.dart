import 'package:flutter/material.dart';

import '../../responsive.dart';

class PresentageBarApp extends StatelessWidget {
  const PresentageBarApp(
      {Key? key,
      this.height,
      required this.width,
      required this.widthBar,
      this.textSize,
      this.color})
      : super(key: key);

  final double? height;
  final double width;
  final double widthBar;
  final double? textSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2.0),
      child: Stack(
        children: [
          Container(
            height: height ?? 8.0,
            width: width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.09),
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
          ),
          Container(
            height: height ?? 8.0,
            width: widthBar,
            decoration: BoxDecoration(
              color: color ?? Colors.pink,
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
          ),
          if (Responsive.isMobile(context))
            Container(
              height: height ?? 8.0,
              width: width,
              color: Colors.transparent,
              child: Center(
                  child: Text(
                widthBar.toString() + ' %',
                style: TextStyle(
                    fontSize: textSize ?? 5.0,
                    color:
                        width ~/ widthBar == 1 ? Colors.white : Colors.black54,
                    fontWeight: FontWeight.w600),
              )),
            ),
        ],
      ),
    );
  }
}
