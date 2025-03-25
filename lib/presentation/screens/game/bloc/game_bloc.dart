import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutris/data/game_engine/enum_move_direction.dart';
import 'package:flutris/data/game_engine/game_state_engine.dart';
import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/model_game_configuration.dart';
import 'package:flutris/data/models/type_game_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {

  GameStateEngine? gameEngine;
  Timer? tickTimer;

  GameBloc() : super(const GameState.initial()) {
    on<GameEvent>((event, emit) async{
      await event.when(
          started: ()async{},
          stop: ()async{
            tickTimer?.cancel();
          },
          startGame: (configuration)async{
            gameEngine = GameStateEngine(gridSize: configuration.gridSize);
            tickTimer?.cancel();
            tickTimer = Timer.periodic(Duration(milliseconds: configuration.tickRateInMilliSeconds), (timer)=>_gameTick(true));
          },
          move: (direction)async{
            gameEngine?.moveActiveBlock(direction);
            _gameTick( false);
          },
          publishState:(state)async=>emit(state),
          rotate: ()async{
            gameEngine?.rotateActiveBlock();
            _gameTick( false);
        }
      );
    });
  }

  void _gameTick(bool willMoveDown){
    if (gameEngine == null) {
      return;
    }
    if (willMoveDown) {
      gameEngine!.tick();
    }
    var gameState = gameEngine!.currentState();
    var currentBlock = gameEngine!.activeBlock;
    add(GameEvent.publishState(GameState.tick(currentBlock, gameState, gameEngine?.score ?? 0)));
  }

}
