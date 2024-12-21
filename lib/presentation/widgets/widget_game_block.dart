import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutter/material.dart';

class WidgetGameBlock extends StatelessWidget {
  final ModelGameBlock gameBlock;
  final Size singleBlockSize;
  const WidgetGameBlock({super.key, required this.gameBlock, required this.singleBlockSize});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: PainterGameBlock(gameBlock, singleBlockSize),
    );
  }
}

class PainterGameBlock extends CustomPainter {
  final ModelGameBlock gameBlock;
  final Size blockSize;

  PainterGameBlock(this.gameBlock, this.blockSize);

  @override
  void paint(Canvas canvas, Size size) {
    // Pre-compute paints (used repeatedly)
    final Paint blockPaint = Paint()
      ..color = gameBlock.color
      ..style = PaintingStyle.fill;

    final Paint trianglePaint = Paint()
      ..color = Colors.black12
      ..style = PaintingStyle.fill;

    final Paint linePaint = Paint()
      ..color = Colors.black12
      ..style = PaintingStyle.stroke;

    // Pre-compute darkened color for 'topPaint'
    const colorDarkValue = 0.60;
    final Color darkColor = Color.fromARGB(
      gameBlock.color.alpha,
      (gameBlock.color.red * colorDarkValue).toInt(),
      (gameBlock.color.green * colorDarkValue).toInt(),
      (gameBlock.color.blue * colorDarkValue).toInt(),
    );

    final Paint topPaint = Paint()
      ..color = darkColor
      ..style = PaintingStyle.fill;

    // Pre-compute padding
    const topRectPaddingPercent = 0.65;
    final double paddingWidthValue = blockSize.width * (1 - topRectPaddingPercent);
    final double paddingHeightValue = blockSize.height * (1 - topRectPaddingPercent);

    // Reusable Path object
    final Path triangle = Path();

    final Offset offset = gameBlock.position;

    // Draw blocks
    for (int y = 0; y < gameBlock.configuration.length; y++) {
      for (int x = 0; x < gameBlock.configuration[y].length; x++) {
        if (gameBlock.configuration[y][x] == 1) { // Only draw occupied blocks
          final double dx = (offset.dx+ x) * blockSize.width;
          final double dy = (offset.dy + y) * blockSize.height;

          // Main block
          final Rect rect = Rect.fromLTWH(dx, dy, blockSize.width, blockSize.height);
          canvas.drawRect(rect, blockPaint);

          // Shadow triangle (reuse Path)
          triangle.reset();
          triangle.moveTo(dx, dy);
          triangle.lineTo(dx + blockSize.width, dy);
          triangle.lineTo(dx, dy + blockSize.height);
          triangle.close();
          canvas.drawPath(triangle, trianglePaint);

          // Diagonal line
          canvas.drawLine(
              Offset(dx, dy),
              Offset(dx + blockSize.width, dy + blockSize.height),
              linePaint);

          // Inner top rectangle
          final Rect innerRect = Rect.fromLTWH(
            dx + (paddingWidthValue / 2.0),
            dy + (paddingHeightValue / 2.0),
            blockSize.width * topRectPaddingPercent,
            blockSize.height * topRectPaddingPercent,
          );
          canvas.drawRect(innerRect, topPaint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant PainterGameBlock oldDelegate) {
    return true;
  }
}