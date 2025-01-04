import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutter/material.dart';

class EngineHelper{
  static void debugPrintCollisionMap(Size gridSize, Map<int,Map<int, int>> collisionMap, {List<Coords>? activeBlockCoords}) {
    var availableColors = ["🟥","🟦","🟪","🟩","🟨"];
    var map = collisionMap.map((key, value) => MapEntry(key, Map<int, int>.from(value)));
    if (activeBlockCoords != null) {
      for (var coords in activeBlockCoords) {
        map[coords.y]?[coords.x] = coords.color;
      }
    }
    Map<int, String> colorMap = {};
    for (var y = 0; y < gridSize.height.toInt(); y++) {
      // Map color to emoji for easier visualization
      String row = map[y]!.values.map((colorValue){
        if (colorValue == 0) {
          return "⬛️";
        }
        var val = colorMap[colorValue];
        if (val == null) {
          colorMap[colorValue] = availableColors[colorMap.keys.length%availableColors.length];
        }
        return colorMap[colorValue]!;
      }).join();
      debugPrint(row);
    }

  }
}