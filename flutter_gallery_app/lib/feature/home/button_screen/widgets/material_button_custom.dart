// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MaterialButtonCustom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = const Color(0xff9E9E9E);

    Path path = Path();
    // uncomment this and will get the border for all lines
    path.lineTo(size.width * 1 / 5, 0.0);
    path.relativeArcToPoint(const Offset(18, 0),
        radius: const Radius.circular(2.0), largeArc: true, clockwise: false);
    path.lineTo(size.width - 10, 0);
    path.quadraticBezierTo(size.width, 0.0, size.width, 10.0);
    path.lineTo(size.width, size.height - 10);
    path.quadraticBezierTo(
        size.width, size.height, size.width - 10, size.height);
    path.lineTo(size.width * 1 / 5 + 18, size.height);
    path.arcToPoint(Offset((size.width * 1 / 5), size.height),
        radius: const Radius.circular(1.0), clockwise: false);
    path.lineTo(10.0, size.height);
    path.quadraticBezierTo(0.0, size.height, 0.0, size.height - 10);
    path.lineTo(0.0, 10.0);
    path.quadraticBezierTo(0.0, 0.0, 10.0, 0.0);
    path.close();

    // Draw shadow
    canvas.drawShadow(path, Colors.black.withOpacity(0.5), 4.0, false);

    // Draw stroke
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
