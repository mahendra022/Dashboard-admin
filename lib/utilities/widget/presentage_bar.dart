import 'package:flutter/material.dart';

class PresentageBarApp extends StatelessWidget {
  const PresentageBarApp(
      {Key? key, this.height, this.width, this.widthBar, this.color})
      : super(key: key);

  final double? height;
  final double? width;
  final double? widthBar;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2.0),
      child: Stack(
        children: [
          Container(
            height: height ?? 8.0,
            width: width ?? 180.0,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.09),
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
          ),
          Container(
            height: height ?? 8.0,
            width: widthBar ?? 50.0,
            decoration: BoxDecoration(
              color: color ?? Colors.pink,
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
          ),
        ],
      ),
    );
  }
}
