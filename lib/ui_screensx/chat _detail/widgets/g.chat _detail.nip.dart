part of '../_index.dart';

class NipRight extends CustomPainter {
  final Color bgColor;
  NipRight(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;
    var path = Path();
    path.lineTo(8, 0);
    path.lineTo(0, 8);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NipLeft extends CustomPainter {
  final Color bgColor;
  NipLeft(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = bgColor;
    var path = Path();
    path.lineTo(-8, 0);
    path.lineTo(0, 8);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
