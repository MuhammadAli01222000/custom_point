import 'package:flutter/material.dart';


class Task8 extends StatelessWidget {
  const Task8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CustomPaint(
            size: const Size(200, 200),
            painter: RombPainter(),
          ),
        ),
      ),
    );
  }
}

class RombPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.black
          ..strokeWidth = 8.0;
    paint.style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(100, 25);
    //  path.lineTo(125, 125);//o'ng
    path.lineTo(180, 100); //past
    path.lineTo(180, 100); //chap
    path.lineTo(100, 180); //past
    path.lineTo(20, 100); //chap
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
