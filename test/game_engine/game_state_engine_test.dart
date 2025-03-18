import 'package:flutris/data/game_engine/enum_move_direction.dart';
import 'package:flutris/data/game_engine/game_state_engine.dart';
import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/model_game_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  ModelGameConfiguration configuration = ModelGameConfiguration(Size(10,24), 250);


  test("Test initial Creation", (){
    GameStateEngine stateEngine = GameStateEngine(gridSize: configuration.gridSize);
    expect(stateEngine.currentState().length, configuration.gridSize.height.toInt(),reason: "Initial state length should be equal to grid size height");
    expect(stateEngine.currentState().values.first.length, configuration.gridSize.width.toInt(),reason: "Initial state row count should be equal to grid size width");
    expect(0, stateEngine.score,reason: "Initial score shuold be zero");
  });

  test("Test State Engine Fist Tick", (){
    GameStateEngine stateEngine = GameStateEngine(gridSize: configuration.gridSize);
    expect(stateEngine.activeBlock == null, true, reason: "Active block should be null at initial launch");
    stateEngine.tick();
    expect(stateEngine.activeBlock != null, true, reason: "Active block should be created after the first tick");
    expect(stateEngine.activeBlock?.position.dy,0.0, reason: "Initial Block should start from zero y axis");
    stateEngine.tick();
    expect(stateEngine.activeBlock?.position.dy,1.0, reason: "Block should have been moved 1 y axis");
    var activePosition = stateEngine.activeBlock?.position;
    stateEngine.moveActiveBlock(EnumMoveDirection.right);
    expect(stateEngine.activeBlock?.position.dx,(activePosition?.dx ?? 0)+1, reason: "Block should have been moved +1 x axis");
    activePosition = stateEngine.activeBlock?.position;
    stateEngine.moveActiveBlock(EnumMoveDirection.left);
    expect(stateEngine.activeBlock?.position.dx,(activePosition?.dx ?? 0)-1, reason: "Block should have been moved -1 x axis");
    activePosition = stateEngine.activeBlock?.position;
    final currentRotation = stateEngine.activeBlock?.rotationDegrees;
    stateEngine.rotateActiveBlock();
    expect(currentRotation?.nextRotation(), stateEngine.activeBlock?.rotationDegrees, reason: "Active block should have been rotated");
  });

  test("Test State Engine Collision Detection After Ticks", (){
    GameStateEngine stateEngine = GameStateEngine(gridSize: configuration.gridSize);
    var block1 = ModelGameBlockSquare();
    ///Adding a block to test
    block1.position = Offset(((configuration.gridSize.width - block1.widthCount)/2.0), configuration.gridSize.height - block1.heightCount);
    stateEngine.addBlockToState(block1);
    // We use count-1 because we want to catch item id just before collision
    for(var i = 0; i<(configuration.gridSize.height - block1.heightCount).toInt()-1;i++){
      stateEngine.tick();
    }
    var currentObjectId = stateEngine.activeBlock!.id;
    stateEngine.tick(); //Collision occurred and active block is null now
    stateEngine.tick(); //New active block has been created
    expect(stateEngine.activeBlock!.id != currentObjectId, true, reason: "We have a collision, engine should spawn a new block");
  });
}