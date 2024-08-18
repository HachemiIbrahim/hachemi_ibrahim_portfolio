import 'package:flutter/material.dart';

class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2,
      );

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => false;
}
