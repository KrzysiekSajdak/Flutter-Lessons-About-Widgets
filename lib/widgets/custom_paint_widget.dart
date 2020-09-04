import 'package:flutter/material.dart';

class CustomPaintWidget extends StatelessWidget {
  const CustomPaintWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        size: Size(200, 100),
        painter: DrawLine(),
      ),
    );
  }
}

class DrawLine extends CustomPainter {
  var t = 10;
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(20, 80);
    final p2 = Offset(400, 520);
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
