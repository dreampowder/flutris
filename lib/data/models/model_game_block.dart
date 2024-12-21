import 'dart:ui';

import 'package:flutter/material.dart';

enum EnumBlockRotationState{
  zero, deg90, deg180,deg270;
}

abstract class ModelGameBlock{

  final UniqueKey id;

  // Constructor for assigning a new UniqueKey each time a block is created
  ModelGameBlock() : id = UniqueKey();

  Offset position = Offset.zero;

  List<List<int>> get defaultConfiguration;
  List<List<int>> get configuration{
    switch(rotationDegrees){
      case EnumBlockRotationState.zero:
        return defaultConfiguration;
      case EnumBlockRotationState.deg90:
        return rotate90(defaultConfiguration);
      case EnumBlockRotationState.deg180:
        return rotate90(rotate90(defaultConfiguration));
      case EnumBlockRotationState.deg270:
        return rotate90(rotate90(rotate90(defaultConfiguration)));
    }
  }
  Color get color;
  EnumBlockRotationState rotationDegrees = EnumBlockRotationState.zero;

  List<List<int>> rotate90(List<List<int>> matrix) {
    final int rows = matrix.length;
    final int cols = matrix[0].length;

    // Create a new matrix with transposed dimensions
    List<List<int>> rotated = List.generate(cols, (_) => List.filled(rows, 0));

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        // 90-degree rotation formula
        rotated[j][rows - i - 1] = matrix[i][j];
      }
    }
    return rotated;
  }

  int get widthCount => configuration.first.length;
  int get heightCount => configuration.length;

  static List<ModelGameBlock> get allBlocks => [
    ModelGameBlockTheta(),
    ModelGameBlockLambda(),
    ModelGameBlockZeta(),
    ModelGameBlockSquare(),
    ModelGameBlockLongBrick(),
  ];
}

class ModelGameBlockLongBrick extends ModelGameBlock{
  @override
  Color get color => Colors.red;

  @override
  final defaultConfiguration = [[1],[1],[1],[1]];
}

class ModelGameBlockSquare extends ModelGameBlock{
  @override
  Color get color => Colors.blue;

  @override
  final defaultConfiguration = [[1,1],[1,1]];
}


class ModelGameBlockZeta extends ModelGameBlock{
  @override
  Color get color => Colors.purple;

  @override
  final defaultConfiguration = [[1,1,0],[0,1,1]];
}

class ModelGameBlockLambda extends ModelGameBlock{
  @override
  Color get color => Colors.green;

  @override
  final defaultConfiguration = [[1,0,0],[1,1,1]];
}

class ModelGameBlockTheta extends ModelGameBlock{
  @override
  Color get color => Colors.lightGreenAccent;

  @override
  final defaultConfiguration = [[0,1,0],[1,1,1]];
}