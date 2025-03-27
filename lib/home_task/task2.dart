import 'package:flutter/material.dart';
class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CustomPaint(
            size:const Size(300, 300),
            painter: CustomPaint2(),
          ),
        ),
      ),
    );
  }
}
class   CustomPaint2 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    /// select color
    final paint=Paint()..color=Colors.redAccent;
    ///TODO style  stroke ichi bo'sh bo'ladi
    //paint.style=PaintingStyle.stroke;
    /// TODO ichi toldirilgan
    paint.style=PaintingStyle.fill;
    /// qalinlikni belgilaydi
    paint.strokeWidth=12.0;
    ///shape belgilash
    paint.strokeCap=StrokeCap.round;
    const radius=25.0;
    final center=Offset(size.width/2, size.height/2);
    final rect=Rect.fromCenter(center: center, width: size.width, height:size.height);
    paint.strokeJoin=StrokeJoin.round;

    final start=Offset(100, 100);
    final end=Offset(100, 200); ///ustun
    final offset3=Offset(150, 150); //
    final offset4=Offset(60, 148);
    paint.strokeWidth=4;
    paint.color=Colors.black;
    canvas.drawLine(start,end,paint);
    canvas.drawLine(offset3,offset4,paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>false;

}