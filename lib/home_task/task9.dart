import 'package:flutter/material.dart';

class Task9 extends StatelessWidget {
  const Task9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Center(child: CustomPaint(painter: Silindr())));
  }
}

class Silindr extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final center2 = Offset(size.width / 2, 400);
    final rectangle = Rect.fromCenter(center: center, width: 300, height: 90);
    final rectangle2 = Rect.fromLTWH(50, 250, 200, 550);
    final paint =
        Paint()
          ..color = Colors.purple
          ..style = PaintingStyle.fill;
    canvas.drawOval(rectangle, paint);
    canvas.drawOval(rectangle2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
