import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer(
      {required this.child,
      required this.color,
      required this.height,
      required this.width,
      @required this.borderRadius = 25});

  final Widget child;
   final double width;
  final double height;
  final Color color;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: Colors.black),
    );
  }
}
