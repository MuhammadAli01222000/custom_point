import 'package:flutter/material.dart';
void main ()=>runApp(const Task1());

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
            size: const Size(250, 250),
            painter:CirclePainter() ,
          ),
        ),
      ),
    );
  }
}


///custom painter widget
class CirclePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    /// color
    final paint=Paint()..color=Colors.black;
    /// location
    final center= Offset(size.width/2, size.height/2);
    ///radius
    const radius=16.0;
    /// main function draw
    canvas.drawCircle(center, radius, paint);
    ///                location
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>false;

}