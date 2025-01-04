import 'package:flutris/data/game_engine/engine_helpers.dart';
import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutter/material.dart';

class CollisionDetector{
  final Size gridSize;
  CollisionDetector({required this.gridSize});


  bool detectCollision(ModelGameBlock activeBlock, Map<int,Map<int, int>> gameState){
    var bottomY = (activeBlock.heightCount) + (activeBlock.position.dy);
    if (bottomY == gridSize.height) {
      return true;
    }
    // EngineHelper.debugPrintCollisionMap(   gridSize, gameState, activeBlockCoords: activeBlock.filledCoordinates);
    for (var coords in activeBlock.filledCoordinates) {
      debugPrint("Coords: $coords -> ${gameState[coords.x]?[coords.y]}");
      if ((gameState[coords.y]?[coords.x] ?? 0) != 0) {
        return true;
      }
    }
    return false;
  }

  List<int> detectSuccess(Map<int,Map<int, int>> gameState){
    List<int> successfulRows = [];
    for (var y in gameState.keys) {
      if (!gameState[y]!.containsValue(0)) {
        successfulRows.add(y);
      }
    }
    return successfulRows;
  }
}