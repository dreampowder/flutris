import 'dart:async';
import 'dart:collection';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/model_game_configuration.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:math' as math;

part 'game_engine_event.dart';
part 'game_engine_state.dart';
part 'game_engine_bloc.freezed.dart';


class GameEngineBloc extends Bloc<GameEngineEvent, GameEngineState> {

  Timer? gameTimer;

  late final Random _random;
  final Map<int,Map<int, bool>> collisionMap = <int,Map<int, bool>>{};
  ModelGameBlock? _currentBlock;
  ModelGameConfiguration? _configuration;
  final List<ModelGameBlock> _availableBlocks = [];

  GameEngineBloc() : super(const GameEngineState.initial()) {
    _random = Random(DateTime.now().millisecondsSinceEpoch);
    on<GameEngineEvent>((event, emit) async{
      await event.map(
          started: (_)async{},
          start: (event) async => await _startGame(event.configuration, emit),
          publishState: (event) async => emit(event.state),
          stop: (event)async =>gameTimer?.cancel(),
          moveCurrentBlock: (event) async => _moveCurrentBlock(event.isLeft)
      );
    });
  }

  void _moveCurrentBlock(bool isLeft){
    if (_currentBlock == null) {
      return;
    }
    var xMin = _currentBlock!.position.dx;
    var xMax = _currentBlock!.position.dx + _currentBlock!.widthCount;
    if (isLeft) {
      if (xMin - 1 < 0 ) {
        debugPrint("Cannot move to left more");
        return;
      }
      var targetPosition = _currentBlock!.position.withXValue(xMin - 1);
      if (!doesCurrentBlockHaveCollision(testPosition: targetPosition)) {
        _currentBlock!.position = targetPosition;
      }

    }else{
      if(xMax + 1 > _configuration!.gridSize.width){
        debugPrint("Cannot move right more");
        return;
      }
      var targetPosition = _currentBlock!.position.withXValue(xMin + 1);
      if (!doesCurrentBlockHaveCollision(testPosition: targetPosition)) {
        _currentBlock!.position = targetPosition;
      }
    }
    _updateCollisionGrid();
  }

  FutureOr _startGame(ModelGameConfiguration configuration, Emitter<GameEngineState> emit) async{
    gameTimer?.cancel();
    _configuration = configuration;
    _availableBlocks.clear();
    _recreateCollisionMap();
    _currentBlock = null;
    debugPrint("Collision Map: $collisionMap");
    gameTimer = Timer.periodic(Duration(milliseconds: configuration.tickRateInMilliSeconds), (timer){
      _gameTick();
    });
  }

  FutureOr _gameTick() async{
    if (_currentBlock == null) {
      final nextBlock = ModelGameBlock.allBlocks[_random.nextInt(ModelGameBlock.allBlocks.length)];
      _availableBlocks.add(nextBlock);
      var width = _configuration!.gridSize.width.toInt();
      var height = _configuration!.gridSize.height.toInt();
      var initialOffset = Offset(((width - nextBlock.widthCount)/2.0).floorToDouble(), -1);
      nextBlock.position = initialOffset;
      _currentBlock = nextBlock;

    }
    var nextY = _currentBlock!.position.dy + 1;
    var highestPosition = _availableBlocks.map((e)=>e.position.dy).reduce(max);
    if (highestPosition <= 0) {
      highestPosition = _configuration!.gridSize.height;
    }
    var maxHeight = min(highestPosition,_configuration!.gridSize.height);
    debugPrint("MaxHeight: ${highestPosition} -> ${nextY} -> $maxHeight");

    _currentBlock?.position = Offset(_currentBlock!.position.dx, nextY);
    _updateCollisionGrid();
    if (doesCurrentBlockHaveCollision()) {
      _currentBlock = null;
    }
    add(GameEngineEvent.publishState(GameEngineState.gameUpdate(UniqueKey(),_availableBlocks)));
  }
  ///[testPosition] used for checking before moving or rotating items
  bool doesCurrentBlockHaveCollision({Offset? testPosition}){
    if (_currentBlock == null) {
      return false;
    }
    var bottomY = (_currentBlock!.heightCount) + (testPosition?.dy ?? _currentBlock!.position.dy);
    if (bottomY == _configuration!.gridSize.height) {
      debugPrint("Reached to bottom");
      return true;
    }
    debugPrint("BottomY: $bottomY");
    for(int x = 0; x < _currentBlock!.widthCount; x++){
      var isFilled = _currentBlock!.configuration.last[x] == 1;
      if (isFilled) {
        debugPrint("Checking ${(x +(testPosition?.dx ?? _currentBlock!.position.dx)).toInt()} , ${bottomY+1}");
        if(collisionMap[bottomY]![(x + (testPosition?.dx ?? _currentBlock!.position.dx)).toInt()] == true){
          return true;
        }
      }
    }
    return false;
  }


  void _updateCollisionGrid(){
    _clearCollisionMap();
    for(var block in _availableBlocks){
      for(var x = 0; x<block.widthCount;x++){
        for(var y = 0;y<block.heightCount;y++){
          var isFilled = block.configuration[y][x] == 1;
          collisionMap[y+(block.position.dy)]?[(x+(block.position.dx)).toInt()] = isFilled;
        }
      }
    }
    _debugPrintCollisionMap();
  }

  void _recreateCollisionMap(){
    for(var y = 0; y<_configuration!.gridSize.height.toInt();y++){
      if (collisionMap[y] == null) {
        collisionMap[y] = { for (var item in List.generate(_configuration!.gridSize.width.toInt(), (index) => index)) item : false };
      }
    }
  }

  void _clearCollisionMap(){
    collisionMap.forEach((y,row)=>{
      row.forEach((x,val){
        collisionMap[y]![x] = false;
      })
    });
  }

  void _debugPrintCollisionMap(){
    var printOut = "";
    collisionMap.forEach((y,row){
      row.forEach((x,val){
        printOut += val ? "◻️":"⬛️";
      });
      printOut += "\n";
    });
    debugPrint("Collision Map:");
    debugPrint(printOut);
  }

}

extension OffsetUtils on Offset{
  Offset withXValue(double x)=>Offset(x, dy);
  Offset withYValue(double y)=>Offset(dx, y);
}