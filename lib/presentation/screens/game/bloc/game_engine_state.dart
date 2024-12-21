part of 'game_engine_bloc.dart';

@freezed
class GameEngineState with _$GameEngineState {
  const factory GameEngineState.initial() = _Initial;
  const factory GameEngineState.gameUpdate(UniqueKey key, List<ModelGameBlock> blocks) = _GameUpdate;

}

