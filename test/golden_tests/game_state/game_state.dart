import 'package:flutris/data/game_engine/engine_helpers.dart';
import 'package:flutris/data/game_engine/game_state_engine.dart';
import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/model_game_configuration.dart';
import 'package:flutris/data/models/type_game_state.dart';
import 'package:flutris/presentation/widgets/widget_static_blocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets("Game State Widget Golden Tests", (WidgetTester tester) async{
    tester.view.physicalSize = Size(1170, 2532);

    ModelGameConfiguration configuration = ModelGameConfiguration(Size(10,24), 250);
    GameStateEngine stateEngine = GameStateEngine(gridSize: configuration.gridSize);
    var block1 = ModelGameBlockSquare();
    for(var i = 0;i<configuration.gridSize.width.toInt() / block1.widthCount; i++){
      var block = ModelGameBlockSquare();
      block.position = Offset((block.widthCount * i).toDouble(), 22);
      stateEngine.addBlockToState(block);
    }
    var block = ModelGameBlockZeta();
    block.position = Offset(4,8);
    stateEngine.addBlockToState(block);
    // EngineHelper.debugPrintCollisionMap(configuration.gridSize, stateEngine.currentState());
    var widget = _testBlock(stateEngine.currentState());
    await tester.pumpWidget(widget);
    await expectLater(find.byWidget(widget),
        matchesGoldenFile('game_state.png'));
  });
}

Widget _testBlock(GameEngineState gameState) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Builder(
        builder: (context) {
          // const screenSize = Size(375, 812);
          var gridSize = Size(10,24);
          var screenSize = MediaQuery.of(context).size;
          var singleBlockSize = Size(screenSize.width / gridSize.width, screenSize.height / gridSize.height);
          return SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: SafeArea(
              child: WidgetStaticBlocks(
                gameState: gameState,
                singleBlockSize: singleBlockSize,
              ),
            ),
          );
        }
      ),
    ),
  );
}