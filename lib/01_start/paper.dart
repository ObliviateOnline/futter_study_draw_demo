
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
    
    // canvas.drawCircle(const Offset(100, 100), 10, _paint);

    canvas.drawLine(const Offset(0, 0), const Offset(100, 100), _paint);

    _path.moveTo(100, 100);
    _path.lineTo(200, 0);
    canvas.drawPath(_path, _paint..color = Colors.red);

    _paint
        ..color = Colors.blue
        ..style = PaintingStyle.stroke
        ..strokeWidth = 20;
    canvas.drawLine(const Offset(50 + 100, 50 + 100), const Offset(50 + 100, 150 + 100), _paint..strokeCap = StrokeCap.butt);
    canvas.drawLine(const Offset(100 + 100, 50 + 100), const Offset(100 + 100, 150 + 100), _paint..strokeCap = StrokeCap.round);
    canvas.drawLine(const Offset(150 + 100, 50 + 100), const Offset(150 + 100, 150 + 100), _paint..strokeCap = StrokeCap.square);

    _path.moveTo(50, 50);
    _path.lineTo(50, 150);
    _path.relativeLineTo(100, -50);
    _path.relativeLineTo(0, 100);
    canvas.drawPath(_path, _paint..strokeJoin = StrokeJoin.bevel);

    _path.reset();
    _path.moveTo(50 + 150, 50);
    _path.lineTo(50 + 150, 150);
    _path.relativeLineTo(100, -50);
    _path.relativeLineTo(0, 100);
    canvas.drawPath(_path, _paint..strokeJoin = StrokeJoin.miter);

    _path.reset();
    _path.moveTo(50 + 150 + 150, 50);
    _path.lineTo(50 + 150 + 150, 150);
    _path.relativeLineTo(100, -50);
    _path.relativeLineTo(0, 100);
    canvas.drawPath(_path, _paint..strokeJoin = StrokeJoin.round);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}