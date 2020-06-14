
import 'package:flutter/material.dart';

class LeftAngledEnd extends CustomPainter{
  final BuildContext ctx;

  LeftAngledEnd(this.ctx);

  @override
  void paint(Canvas canvas, Size size) {
    final Gradient gradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Theme.of(ctx).primaryColorDark.withOpacity(0.8), Theme.of(ctx).primaryColor.withOpacity(0.8)],
      tileMode: TileMode.clamp,
    );

    final Rect colorBounds = Rect.fromLTRB(0, 0, size.width, size.height);
    final Paint paint = Paint();
    paint.shader = gradient.createShader(colorBounds);

    Path path = Path();
    path.moveTo(0,size.height);
    path.lineTo(20, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}