import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/type_game_state.dart';
import 'package:flutter/material.dart';

class WidgetStaticBlocks extends StatelessWidget {

  final GameEngineState gameState;
  final Size singleBlockSize;
  const WidgetStaticBlocks({super.key, required this.gameState, required this.singleBlockSize});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PainterGameState(singleBlockSize, gameState),
    );
  }
}

class PainterGameState extends CustomPainter{
  final GameEngineState gameState;
  final Size blockSize;

  PainterGameState(this.blockSize, this.gameState);

  @override
  void paint(Canvas canvas, Size size) {
    for(var y in gameState.keys){
      for(var x in gameState[y]!.keys){
        var color = gameState[y]![x]!;
        if (color != 0) {
          drawSingleBlock(canvas, Color(color), Offset(x.toDouble(), y.toDouble()));
        }
      }
    }
  }

  void drawSingleBlock(Canvas canvas, Color color, Offset position){

    final Paint blockPaint = Paint()
      ..color = color
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
      color.alpha,
      (color.red * colorDarkValue).toInt(),
      (color.green * colorDarkValue).toInt(),
      (color.blue * colorDarkValue).toInt(),
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

    final Offset offset = position;

    final double dx = (offset.dx) * blockSize.width;
    final double dy = (offset.dy) * blockSize.height;

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

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}