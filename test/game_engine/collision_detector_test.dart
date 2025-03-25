import 'package:flutris/data/game_engine/collision_detector.dart';
import 'package:flutris/data/game_engine/engine_helpers.dart';
import 'package:flutris/data/game_engine/game_state_engine.dart';
import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/model_game_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  ModelGameConfiguration configuration = ModelGameConfiguration(Size(10,24), 250);
  CollisionDetector collisionDetector = CollisionDetector(gridSize: configuration.gridSize);
  GameStateEngine stateEngine = GameStateEngine(gridSize: configuration.gridSize);

  test("Test Empty List Collision", (){
    var block1 = ModelGameBlockSquare();
    expect(collisionDetector.detectCollision(block1,stateEngine.currentState()), false, reason: "The board is empty, there shouldn't be any collision detected.");
  });

  test("Test Not touching the bottom", (){
    var block = ModelGameBlockSquare();
    block.position = Offset(0, 20);
    expect(false, collisionDetector.detectCollision(block, stateEngine.currentState()), reason: "The object is not touching to the bottom and no other objects avail. no collisions should be detected");
  });
  //
  //
  //
  test("Test Bottom Touch", (){
    var block1 = ModelGameBlockSquare();
    block1.position = Offset(0, 22);
    expect(true, collisionDetector.detectCollision(block1, stateEngine.currentState()), reason: "The object is at the bottom, collision should be detected.");
  });
  //
  //
  //
  test("Test Double Block Collision", (){
    GameStateEngine stateEngine = GameStateEngine(gridSize: configuration.gridSize);
    var block1 = ModelGameBlockSquare();
    block1.position = Offset(0, 22);
    stateEngine.addBlockToState(block1);
    var block2 = ModelGameBlockSquare();
    block2.position = Offset(0, 20);
    expect(false, collisionDetector.detectCollision(block2,stateEngine.currentState()),reason: "The object is on top of block1 but not colliding, it should return false");
    //move 1 more step
    block2.position = Offset(0, 21);
    expect(true, collisionDetector.detectCollision(block2,stateEngine.currentState()), reason: "Objects should be collided.");
  });
  //
  test("Test Partial Collision", (){
    GameStateEngine stateEngine = GameStateEngine(gridSize: configuration.gridSize);
    var block1 = ModelGameBlockSquare();
    block1.position = Offset(4, 22);
    var block2 = ModelGameBlockSquare();
    block2.position = Offset(3, 20);
    var block3 = ModelGameBlockTheta();
    block3.rotationDegrees = EnumBlockRotationState.deg270;
    block3.position = Offset(4, 18);
    stateEngine.addBlockToState(block1);
    stateEngine.addBlockToState(block2);
    expect(false, collisionDetector.detectCollision(block3,stateEngine.currentState()), reason: "No colliding parts present.");
    // Block3 has moved 1 more block
    block3.position = Offset(4, 19);
    expect(true, collisionDetector.detectCollision(block3,stateEngine.currentState()), reason: "A small part of the object should be colliding");
  });
  //
  test("Test Rotation Collision", (){
    var block1 = ModelGameBlockSquare();
    block1.position = Offset(4, 22);
    var block2 = ModelGameBlockSquare();
    block2.position = Offset(3, 20);
    var block3 = ModelGameBlockTheta();
    block3.rotationDegrees = EnumBlockRotationState.deg270;
    block3.position = Offset(4, 18);
    GameStateEngine stateEngine = GameStateEngine(gridSize: configuration.gridSize);
    stateEngine.addBlockToState(block1);
    stateEngine.addBlockToState(block2);
    expect(false, collisionDetector.detectCollision(block3,stateEngine.currentState()), reason: "No collision should be detected");
    block3.position = Offset(4, 20);
    block3.rotationDegrees = EnumBlockRotationState.deg180;
    expect(true, collisionDetector.detectCollision(block3,stateEngine.currentState()), reason: "The rotated object should be collided");
  });

  test("Test Successful Rows", (){
    GameStateEngine stateEngine = GameStateEngine(gridSize: configuration.gridSize);
    List<int> successfulRows = collisionDetector.detectSuccess(stateEngine.currentState());
    expect(successfulRows.length, 0, reason: "There should be no successful rows detected with an empty game state");
    var block1 = ModelGameBlockSquare();
    ///Fill the bottom layer with squares
    for(var i = 0;i<configuration.gridSize.width.toInt() / block1.widthCount; i++){
      var block = ModelGameBlockSquare();
      block.position = Offset((block.widthCount * i).toDouble(), 22);
      stateEngine.addBlockToState(block);
    }
    // EngineHelper.debugPrintCollisionMap(configuration.gridSize, stateEngine.currentState());
    successfulRows = collisionDetector.detectSuccess(stateEngine.currentState());
    expect(successfulRows.length, 2, reason: "There should be 2 successful rows detected because we filled bottom with squares");
    expect(successfulRows.first, 22, reason: "22th row should be successfully detected");
    expect(successfulRows.last, 23, reason: "23rd row should be successfully detected");
    expect(successfulRows.last, 23, reason: "23rd row should be successfully detected");
    stateEngine.tick();
    // EngineHelper.debugPrintCollisionMap(configuration.gridSize, stateEngine.currentState());
  });

}