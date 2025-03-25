import 'package:flutter/material.dart';

class WidgetGameGrid extends StatelessWidget {
  final Size gameGridSize;
  final Size singleBLockSize;
  const WidgetGameGrid({super.key, required this.gameGridSize, required this.singleBLockSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: gameGridSize.width * singleBLockSize.width,
      height: gameGridSize.height * singleBLockSize.height,
      child: CustomPaint(
        painter: GameGridPainter(gameGridSize, singleBLockSize),
      ),
    );
  }
}

class GameGridPainter extends CustomPainter{
  final Size gameGridSize;
  final Size singleBLockSize;
  GameGridPainter(this.gameGridSize, this.singleBLockSize);

  @override
  void paint(Canvas canvas, Size size) {

    // final Paint linePaint = Paint()
    //   ..color = Colors.black12
    //   ..style = PaintingStyle.stroke;

    Paint paint = Paint()
    ..color = Colors.black26
    ..style = PaintingStyle.stroke
    ..strokeWidth = 0.5;

    for (var x = 0; x <= gameGridSize.width.toInt(); x++) {
      double dx = x * singleBLockSize.width;
      canvas.drawLine(
        Offset(dx, 0),
        Offset(dx, size.height),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}