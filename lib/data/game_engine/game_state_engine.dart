
import 'dart:math';
import 'dart:ui';

import 'package:flutris/data/game_engine/collision_detector.dart';
import 'package:flutris/data/game_engine/engine_helpers.dart';
import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/type_game_state.dart';
import 'package:flutter/foundation.dart';

class GameStateEngine{
  final Size gridSize;
  final  Random random = Random(DateTime.now().millisecondsSinceEpoch);
  late final GameState _gameState;
  late final CollisionDetector collisionDetector;
  GameStateEngine({required this.gridSize}){
    collisionDetector = CollisionDetector(gridSize: gridSize);
    _gameState = {};
    for (var y = 0; y < gridSize.height.toInt(); y++) {
      _gameState[y] = { for (var x = 0; x < gridSize.width.toInt(); x++) x: 0 };
    }
  }

  ModelGameBlock? activeBlock;

  GameState currentState(){
    return _gameState;
  }

  void tick(){
    if (activeBlock == null) {
      var nextBlock = ModelGameBlock.allBlocks[random.nextInt(ModelGameBlock.allBlocks.length)];
      var width = gridSize.width.toInt();
      var initialOffset = Offset(((width - nextBlock.widthCount)/2.0).floorToDouble(), -1);
      nextBlock.position = initialOffset;
      activeBlock = nextBlock;
    }
    var nextPosition = Offset(activeBlock!.position.dx, activeBlock!.position.dy+1);
    var testCopy = activeBlock!.copyWith(position: nextPosition);
    var doesHaveCollision = collisionDetector.detectCollision(testCopy, _gameState);
    debugPrint("Does have collision: $doesHaveCollision");
    if (doesHaveCollision) { ///Save the object as static objects and send a new one.
      debugPrint("Collision detected, saving object");
      addBlockToState(activeBlock!);
      activeBlock = null;
    }else{
      activeBlock = testCopy;
    }
    debugPrint("Tick Complete");
    EngineHelper.debugPrintCollisionMap(gridSize, _gameState, activeBlockCoords: activeBlock?.filledCoordinates);
    collapseRows(collisionDetector.detectSuccess(_gameState));
    EngineHelper.debugPrintCollisionMap(gridSize, _gameState, activeBlockCoords: activeBlock?.filledCoordinates);
  }

  void addBlockToState(ModelGameBlock updatedBlock){
    debugPrint("Adding color: ${updatedBlock.color}");
    for (var coords in updatedBlock.filledCoordinates) {
      _gameState[coords.y]?[coords.x] = coords.color;
    }
  }

  void collapseRows(List<int> rows) {
    rows.sort(); // Sort rows in ascending order
    for (var row in rows) {
      // Collapse each row and shift all rows above it down by one level
      for (var y = row; y > 0; y--) {
        _gameState[y] = Map.from(_gameState[y - 1]!); // Copy row above
      }
      // Clear the top row (row 0)
      for (var x = 0; x < gridSize.width.toInt(); x++) {
        _gameState[0]?[x] = 0;
      }
    }
  }

}