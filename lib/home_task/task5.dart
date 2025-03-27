import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State<Task5> createState() => _Task5State();
}

class _Task5State extends State<Task5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CustomPaint(
            size: const Size(300, 300),
            painter: CustomPaint2(),
          ),
        ),
      ),
    );
  }
}

class CustomPaint2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// select color
    final paint = Paint()..color = Colors.black;
    paint.style = PaintingStyle.stroke;

    paint.strokeWidth = 12.0;
    paint.strokeCap = StrokeCap.round;
    const radius = 25.0;
    final center = Offset(size.width / 2, size.height / 2);
    final rect = Rect.fromCenter(
      center: center,
      width: size.width,
      height: size.height,
    );
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
