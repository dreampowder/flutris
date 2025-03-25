import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/type_game_state.dart';
import 'package:flutter/material.dart';

class CollisionDetector{
  final Size gridSize;
  CollisionDetector({required this.gridSize});


  bool detectCollision(ModelGameBlock activeBlock, GameEngineState gameState){
    var bottomY = (activeBlock.heightCount) + (activeBlock.position.dy);
    if (bottomY == gridSize.height) {
      return true;
    }
    if (activeBlock.position.dx < 0 || (activeBlock.position.dx + activeBlock.widthCount) > gridSize.width){
      return true;
    }
    // EngineHelper.debugPrintCollisionMap(   gridSize, gameState, activeBlockCoords: activeBlock.filledCoordinates);
    for (var coords in activeBlock.filledCoordinates) {
      if ((gameState[coords.y]?[coords.x] ?? 0) != 0) {
        return true;
      }
    }
    return false;
  }

  List<int> detectSuccess(GameEngineState gameState){
    List<int> successfulRows = [];
    for (var y in gameState.keys) {
      if (!gameState[y]!.containsValue(0)) {
        successfulRows.add(y);
      }
    }
    return successfulRows;
  }
}