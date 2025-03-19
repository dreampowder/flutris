import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/presentation/widgets/widget_game_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Game Block Golden Tests", (WidgetTester tester) async{
    tester.view.physicalSize = Size(1170, 2532);
    for (var block in ModelGameBlock.allBlocks) {
      var widget = _testBlock(block);
      await tester.pumpWidget(widget);
      await expectLater(find.byWidget(widget),
          matchesGoldenFile('block_${block.runtimeType.toString().toLowerCase()}_.png'));
    }

  });
}

Widget _testBlock(ModelGameBlock gameBlock) {
  return MaterialApp(
    home: Scaffold(
      body: Builder(
        builder: (context) {
          var gridSize = Size(10,24);
          var screenSize = MediaQuery.of(context).size;
          var singleBlockSize = Size(screenSize.width / gridSize.width, screenSize.height / gridSize.height);
          return Center(
            child: RepaintBoundary( // Added RepaintBoundary
              child: WidgetGameBlock(
                gameBlock: gameBlock,
                singleBlockSize: singleBlockSize,
              ),
            ),
          );
        }
      ),
    ),
  );
}