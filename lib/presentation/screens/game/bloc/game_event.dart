part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.started() = _Started;
  const factory GameEvent.startGame(ModelGameConfiguration configuration) = _StartGame;
  const factory GameEvent.stop() = _StopGame;
  const factory GameEvent.move(EnumMoveDirection direction) = _MoveBlock;
  const factory GameEvent.rotate() = _RotateBlock;
  const factory GameEvent.publishState(GameState state) = _PublishState;
}
