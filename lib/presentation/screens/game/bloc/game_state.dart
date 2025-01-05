part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial() = _Initial;
  const factory GameState.tick(ModelGameBlock? activeBlock, GameEngineState gameEngineState) = _Tick;

}
