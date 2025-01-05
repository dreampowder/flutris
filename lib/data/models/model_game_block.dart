import 'package:flutter/material.dart';

enum EnumBlockRotationState{
  zero, deg90, deg180,deg270;

  EnumBlockRotationState nextRotation(){
    return EnumBlockRotationState.values[(index+1)%EnumBlockRotationState.values.length];
  }
}

class Coords{
  int x;
  int y;
  int color;
  Coords(this.x, this.y, this.color);

  @override
  String toString() {
    return "[$x,$y]";
  }
}

abstract class ModelGameBlock{

  final UniqueKey id;

  // Constructor for assigning a new UniqueKey each time a block is created
  ModelGameBlock() : id = UniqueKey();

  ModelGameBlock copyWith({Offset? position, EnumBlockRotationState? rotation});

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

  List<Coords> get filledCoordinates{
    var config = configuration;
    List<Coords> coords = [];
    for (var y = 0; y<config.length; y++) {
      for(var x = 0;x<config[y].length;x++){
        var isFilled = config[y][x] == 1;
        if (isFilled) {
          coords.add(Coords(x+position.dx.toInt(), y+position.dy.toInt(), intColor));
        }
      }
    }
    return coords;
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

  int get intColor {
    return ((color.a * 255).toInt() << 24) |
    ((color.r * 255).toInt() << 16) |
    ((color.g * 255).toInt() << 8)  |
    ((color.b * 255).toInt());
  }



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

  @override
  ModelGameBlock copyWith({Offset? position, EnumBlockRotationState? rotation}) {
    var copy = ModelGameBlockLongBrick();
    copy.position = position ?? this.position;
    copy.rotationDegrees = rotation ?? rotationDegrees;
    return copy;
  }
}

class ModelGameBlockSquare extends ModelGameBlock{
  @override
  Color get color => Colors.blue;

  @override
  final defaultConfiguration = [[1,1],[1,1]];

  @override
  ModelGameBlock copyWith({Offset? position, EnumBlockRotationState? rotation}) {
    var copy = ModelGameBlockSquare();
    copy.position = position ?? this.position;
    copy.rotationDegrees = rotation ?? rotationDegrees;
    return copy;
  }
}


class ModelGameBlockZeta extends ModelGameBlock{
  @override
  Color get color => Colors.purple;

  @override
  final defaultConfiguration = [[1,1,0],[0,1,1]];

  @override
  ModelGameBlock copyWith({Offset? position, EnumBlockRotationState? rotation}) {
    var copy = ModelGameBlockZeta();
    copy.position = position ?? this.position;
    copy.rotationDegrees = rotation ?? rotationDegrees;
    return copy;
  }
}

class ModelGameBlockLambda extends ModelGameBlock{
  @override
  Color get color => Colors.green;

  @override
  final defaultConfiguration = [[1,0,0],[1,1,1]];

  @override
  ModelGameBlock copyWith({Offset? position, EnumBlockRotationState? rotation}) {
    var copy = ModelGameBlockLambda();
    copy.position = position ?? this.position;
    copy.rotationDegrees = rotation ?? rotationDegrees;
    return copy;
  }
}

class ModelGameBlockTheta extends ModelGameBlock{
  @override
  Color get color => Colors.lightGreenAccent;

  @override
  final defaultConfiguration = [[0,1,0],[1,1,1]];

  @override
  ModelGameBlock copyWith({Offset? position, EnumBlockRotationState? rotation}) {
    var copy = ModelGameBlockTheta();
    copy.position = position ?? this.position;
    copy.rotationDegrees = rotation ?? rotationDegrees;
    return copy;
  }
}

class ModelGameBlockSingle extends ModelGameBlock{
  @override
  final Color color;
  ModelGameBlockSingle(this.color);

  @override
  List<List<int>> get defaultConfiguration => [[0,1]];

  @override
  ModelGameBlock copyWith({Offset? position, EnumBlockRotationState? rotation}) {
    var copy = ModelGameBlockSingle(color);
    copy.position = position ?? this.position;
    copy.rotationDegrees = rotation ?? rotationDegrees;
    return copy;
  }
}