import 'package:flutter/material.dart';

class Task6 extends StatelessWidget {
  const Task6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CustomPaint(
            size: const Size(200, 200),
            painter: RectPainter(),
          ),
        ),
      ),
    );
  }
}

class RectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final double lineLength = 150;

    final paint =
        Paint()
          ..color = Colors.black
          ..strokeWidth = 3.0;
    paint.style = PaintingStyle.stroke;
    const radius = 50.0;
    final rect = Rect.fromCenter(center: center, width: 200, height: 200);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
