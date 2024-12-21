import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/presentation/widgets/widget_game_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Game Block Golden Tests", (WidgetTester tester) async{

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
      body: Center(
        child: RepaintBoundary( // Added RepaintBoundary
          child: WidgetGameBlock(
            gameBlock: gameBlock,
            singleBlockSize: const Size(40, 40),
          ),
        ),
      ),
    ),
  );
}