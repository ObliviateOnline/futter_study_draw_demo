
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Paper extends StatefulWidget {
  const Paper({super.key});

  @override
  PaperState createState() => PaperState();
}

class PaperState extends State<Paper> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return CustomPaint(
      painter: PaperPainter(),
    );
  }
}

class PaperPainter extends CustomPainter {
  late Paint _paint;
  late Path _path;

  PaperPainter() {
    _paint = Paint()
          ..color = Colors.blue
          ..strokeWidth = 4
          ..style = PaintingStyle.stroke;
    _path = Path();
}

  @override
  void paint(Canvas canvas, Size size) {
    if (kDebugMode) {
      print(size);
    }
    
    canvas.drawCircle(const Offset(100, 100), 10, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}