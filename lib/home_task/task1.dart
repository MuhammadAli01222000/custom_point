import 'package:flutter/material.dart';
class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
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
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=12.0;
    paint.strokeCap=StrokeCap.round;
    const radius=25.0;
    final center=Offset(size.width/2, size.height/2);
    ///canvas.drawCircle(center, radius, paint);   ///circle uchun
    final rect=Rect.fromCenter(center: center, width: size.width, height:size.height);
    //  canvas.drawRect(rect, paint);
    paint.strokeJoin=StrokeJoin.round;
    ///blur effect
    // paint.maskFilter=MaskFilter.blur(BlurStyle.normal, 4.0);
    //canvas.drawRect(rect, paint);
    final offset=Offset(100, 200);
    final offset2=Offset(200, 200);
    paint.strokeWidth=4;
    paint.color=Colors.black;
    canvas.drawLine(offset,offset2,paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>false;

}