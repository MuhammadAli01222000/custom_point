import 'package:flutter/material.dart';

void main() => runApp(const Task3());

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CustomPaint(
            size: const Size(200, 200),
            painter: XPainter(),
          ),
        ),
      ),
    );
  }
}

class XPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final double lineLength = 150;

    final Offset start1 = center + Offset(-lineLength, -lineLength);
    final Offset end1 = center + Offset(lineLength, lineLength);

    final Offset start2 = center + Offset(-lineLength, lineLength);
    final Offset end2 = center + Offset(lineLength, -lineLength);

    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 8.0
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(start1, end1, paint);
    canvas.drawLine(start2, end2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
