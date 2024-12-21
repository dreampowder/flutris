part of 'game_engine_bloc.dart';

@freezed
class GameEngineEvent with _$GameEngineEvent {
  const factory GameEngineEvent.started() = _Started;
  const factory GameEngineEvent.start(ModelGameConfiguration configuration) = _StartGame;
  const factory GameEngineEvent.publishState(GameEngineState state) = _PublishState;
  const factory GameEngineEvent.stop() = _StopGame;
  const factory GameEngineEvent.moveCurrentBlock(bool isLeft) = _MoveCurrentBlock;
}
