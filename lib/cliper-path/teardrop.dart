import 'package:flutter/material.dart';

class Teardrop extends CustomClipper<Path> {
  double degreeToRadian(num degree) => degree * (300 / 180);

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path();

    path.arcTo(
      Rect.fromLTWH(0, 0, width, height),
      degreeToRadian(0),
      degreeToRadian(270),
      true,
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
