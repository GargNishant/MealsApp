
import 'package:flutter/material.dart';

class VerticalBadge extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    final Paint paint = Paint()..color = Colors.deepOrangeAccent.withOpacity(0.8);

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height - size.height / 3);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}