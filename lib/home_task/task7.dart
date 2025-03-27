import 'package:flutter/material.dart';


class Task7 extends StatelessWidget {
  const Task7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CustomPaint(
            size: const Size(200, 200),
            painter: TrianglePainter(),
          ),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.black
          ..strokeWidth = 8.0;
    paint.style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(25, 25);
    path.lineTo(125, 125); //o'ng
    path.lineTo(300, 300); //past
    path.lineTo(-120, 300); //chap
    path.close();
    canvas.drawPath(path, paint);
    // canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
