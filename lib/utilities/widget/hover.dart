import 'package:flutter/material.dart';

class HoverApp extends StatefulWidget {
  const HoverApp({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  State<HoverApp> createState() => _HoverAppState();
}

class _HoverAppState extends State<HoverApp> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..scale(1.1);
    final transform = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        transformAlignment: FractionalOffset.center,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
