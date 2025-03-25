
import 'dart:math';
import 'dart:ui';

import 'package:flutris/data/game_engine/collision_detector.dart';
import 'package:flutris/data/game_engine/enum_move_direction.dart';
import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/type_game_state.dart';

class GameStateEngine{
  final Size gridSize;
  final  Random random = Random(DateTime.now().millisecondsSinceEpoch);
  late final GameEngineState _gameState;
  late final CollisionDetector collisionDetector;

  int score = 0;

  GameStateEngine({required this.gridSize}){
    collisionDetector = CollisionDetector(gridSize: gridSize);
    _gameState = {};
    for (var y = 0; y < gridSize.height.toInt(); y++) {
      _gameState[y] = { for (var x = 0; x < gridSize.width.toInt(); x++) x: 0 };
    }
  }

  ModelGameBlock? activeBlock;

  GameEngineState currentState(){
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
    if (doesHaveCollision) {
      addBlockToState(activeBlock!);
      activeBlock = null;
    }else{
      activeBlock = testCopy;
    }
    // EngineHelper.debugPrintCollisionMap(gridSize, _gameState, activeBlockCoords: activeBlock?.filledCoordinates);
    while(collisionDetector.detectSuccess(_gameState).isNotEmpty){
      collapseRows(collisionDetector.detectSuccess(_gameState));
    }
    // EngineHelper.debugPrintCollisionMap(gridSize, _gameState, activeBlockCoords: activeBlock?.filledCoordinates);
  }

  void addBlockToState(ModelGameBlock updatedBlock){
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
    var baseScore = 100;
    var multiplier = 1.5;
    score += (baseScore * pow(multiplier, rows.length - 1)).toInt();
  }

  void moveActiveBlock(EnumMoveDirection direction){
    if (activeBlock == null) {
      return;
    }
    var position = activeBlock!.position;
    ModelGameBlock futureBlock;
    switch(direction){
      case EnumMoveDirection.left:
        futureBlock = activeBlock!.copyWith(position: Offset(position.dx - 1, position.dy));
      case EnumMoveDirection.right:
        futureBlock = activeBlock!.copyWith(position: Offset(position.dx + 1, position.dy));
      case EnumMoveDirection.down:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
    if (!collisionDetector.detectCollision(futureBlock, currentState())) {
      activeBlock = futureBlock;
    }
  }

  void rotateActiveBlock(){
    if (activeBlock == null) {
      return;
    }
    var rotation = activeBlock!.rotationDegrees;
    ModelGameBlock futureBlock = activeBlock!.copyWith(rotation: rotation.nextRotation());
    if (!collisionDetector.detectCollision(futureBlock, currentState())) {
      activeBlock = futureBlock;
    }
  }
}