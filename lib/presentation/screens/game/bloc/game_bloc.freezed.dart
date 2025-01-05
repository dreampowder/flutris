// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ModelGameConfiguration configuration) startGame,
    required TResult Function() stop,
    required TResult Function(EnumMoveDirection direction) move,
    required TResult Function() rotate,
    required TResult Function(GameState state) publishState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? startGame,
    TResult? Function()? stop,
    TResult? Function(EnumMoveDirection direction)? move,
    TResult? Function()? rotate,
    TResult? Function(GameState state)? publishState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? startGame,
    TResult Function()? stop,
    TResult Function(EnumMoveDirection direction)? move,
    TResult Function()? rotate,
    TResult Function(GameState state)? publishState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveBlock value) move,
    required TResult Function(_RotateBlock value) rotate,
    required TResult Function(_PublishState value) publishState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveBlock value)? move,
    TResult? Function(_RotateBlock value)? rotate,
    TResult? Function(_PublishState value)? publishState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveBlock value)? move,
    TResult Function(_RotateBlock value)? rotate,
    TResult Function(_PublishState value)? publishState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GameEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ModelGameConfiguration configuration) startGame,
    required TResult Function() stop,
    required TResult Function(EnumMoveDirection direction) move,
    required TResult Function() rotate,
    required TResult Function(GameState state) publishState,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? startGame,
    TResult? Function()? stop,
    TResult? Function(EnumMoveDirection direction)? move,
    TResult? Function()? rotate,
    TResult? Function(GameState state)? publishState,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? startGame,
    TResult Function()? stop,
    TResult Function(EnumMoveDirection direction)? move,
    TResult Function()? rotate,
    TResult Function(GameState state)? publishState,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveBlock value) move,
    required TResult Function(_RotateBlock value) rotate,
    required TResult Function(_PublishState value) publishState,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveBlock value)? move,
    TResult? Function(_RotateBlock value)? rotate,
    TResult? Function(_PublishState value)? publishState,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveBlock value)? move,
    TResult Function(_RotateBlock value)? rotate,
    TResult Function(_PublishState value)? publishState,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GameEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$StartGameImplCopyWith<$Res> {
  factory _$$StartGameImplCopyWith(
          _$StartGameImpl value, $Res Function(_$StartGameImpl) then) =
      __$$StartGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ModelGameConfiguration configuration});
}

/// @nodoc
class __$$StartGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StartGameImpl>
    implements _$$StartGameImplCopyWith<$Res> {
  __$$StartGameImplCopyWithImpl(
      _$StartGameImpl _value, $Res Function(_$StartGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configuration = null,
  }) {
    return _then(_$StartGameImpl(
      null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ModelGameConfiguration,
    ));
  }
}

/// @nodoc

class _$StartGameImpl implements _StartGame {
  const _$StartGameImpl(this.configuration);

  @override
  final ModelGameConfiguration configuration;

  @override
  String toString() {
    return 'GameEvent.startGame(configuration: $configuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartGameImpl &&
            (identical(other.configuration, configuration) ||
                other.configuration == configuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, configuration);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartGameImplCopyWith<_$StartGameImpl> get copyWith =>
      __$$StartGameImplCopyWithImpl<_$StartGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ModelGameConfiguration configuration) startGame,
    required TResult Function() stop,
    required TResult Function(EnumMoveDirection direction) move,
    required TResult Function() rotate,
    required TResult Function(GameState state) publishState,
  }) {
    return startGame(configuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? startGame,
    TResult? Function()? stop,
    TResult? Function(EnumMoveDirection direction)? move,
    TResult? Function()? rotate,
    TResult? Function(GameState state)? publishState,
  }) {
    return startGame?.call(configuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? startGame,
    TResult Function()? stop,
    TResult Function(EnumMoveDirection direction)? move,
    TResult Function()? rotate,
    TResult Function(GameState state)? publishState,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(configuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveBlock value) move,
    required TResult Function(_RotateBlock value) rotate,
    required TResult Function(_PublishState value) publishState,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveBlock value)? move,
    TResult? Function(_RotateBlock value)? rotate,
    TResult? Function(_PublishState value)? publishState,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveBlock value)? move,
    TResult Function(_RotateBlock value)? rotate,
    TResult Function(_PublishState value)? publishState,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }
}

abstract class _StartGame implements GameEvent {
  const factory _StartGame(final ModelGameConfiguration configuration) =
      _$StartGameImpl;

  ModelGameConfiguration get configuration;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartGameImplCopyWith<_$StartGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopGameImplCopyWith<$Res> {
  factory _$$StopGameImplCopyWith(
          _$StopGameImpl value, $Res Function(_$StopGameImpl) then) =
      __$$StopGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StopGameImpl>
    implements _$$StopGameImplCopyWith<$Res> {
  __$$StopGameImplCopyWithImpl(
      _$StopGameImpl _value, $Res Function(_$StopGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopGameImpl implements _StopGame {
  const _$StopGameImpl();

  @override
  String toString() {
    return 'GameEvent.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ModelGameConfiguration configuration) startGame,
    required TResult Function() stop,
    required TResult Function(EnumMoveDirection direction) move,
    required TResult Function() rotate,
    required TResult Function(GameState state) publishState,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? startGame,
    TResult? Function()? stop,
    TResult? Function(EnumMoveDirection direction)? move,
    TResult? Function()? rotate,
    TResult? Function(GameState state)? publishState,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? startGame,
    TResult Function()? stop,
    TResult Function(EnumMoveDirection direction)? move,
    TResult Function()? rotate,
    TResult Function(GameState state)? publishState,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveBlock value) move,
    required TResult Function(_RotateBlock value) rotate,
    required TResult Function(_PublishState value) publishState,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveBlock value)? move,
    TResult? Function(_RotateBlock value)? rotate,
    TResult? Function(_PublishState value)? publishState,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveBlock value)? move,
    TResult Function(_RotateBlock value)? rotate,
    TResult Function(_PublishState value)? publishState,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _StopGame implements GameEvent {
  const factory _StopGame() = _$StopGameImpl;
}

/// @nodoc
abstract class _$$MoveBlockImplCopyWith<$Res> {
  factory _$$MoveBlockImplCopyWith(
          _$MoveBlockImpl value, $Res Function(_$MoveBlockImpl) then) =
      __$$MoveBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EnumMoveDirection direction});
}

/// @nodoc
class __$$MoveBlockImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$MoveBlockImpl>
    implements _$$MoveBlockImplCopyWith<$Res> {
  __$$MoveBlockImplCopyWithImpl(
      _$MoveBlockImpl _value, $Res Function(_$MoveBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
  }) {
    return _then(_$MoveBlockImpl(
      null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as EnumMoveDirection,
    ));
  }
}

/// @nodoc

class _$MoveBlockImpl implements _MoveBlock {
  const _$MoveBlockImpl(this.direction);

  @override
  final EnumMoveDirection direction;

  @override
  String toString() {
    return 'GameEvent.move(direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveBlockImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveBlockImplCopyWith<_$MoveBlockImpl> get copyWith =>
      __$$MoveBlockImplCopyWithImpl<_$MoveBlockImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ModelGameConfiguration configuration) startGame,
    required TResult Function() stop,
    required TResult Function(EnumMoveDirection direction) move,
    required TResult Function() rotate,
    required TResult Function(GameState state) publishState,
  }) {
    return move(direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? startGame,
    TResult? Function()? stop,
    TResult? Function(EnumMoveDirection direction)? move,
    TResult? Function()? rotate,
    TResult? Function(GameState state)? publishState,
  }) {
    return move?.call(direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? startGame,
    TResult Function()? stop,
    TResult Function(EnumMoveDirection direction)? move,
    TResult Function()? rotate,
    TResult Function(GameState state)? publishState,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveBlock value) move,
    required TResult Function(_RotateBlock value) rotate,
    required TResult Function(_PublishState value) publishState,
  }) {
    return move(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveBlock value)? move,
    TResult? Function(_RotateBlock value)? rotate,
    TResult? Function(_PublishState value)? publishState,
  }) {
    return move?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveBlock value)? move,
    TResult Function(_RotateBlock value)? rotate,
    TResult Function(_PublishState value)? publishState,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(this);
    }
    return orElse();
  }
}

abstract class _MoveBlock implements GameEvent {
  const factory _MoveBlock(final EnumMoveDirection direction) = _$MoveBlockImpl;

  EnumMoveDirection get direction;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveBlockImplCopyWith<_$MoveBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RotateBlockImplCopyWith<$Res> {
  factory _$$RotateBlockImplCopyWith(
          _$RotateBlockImpl value, $Res Function(_$RotateBlockImpl) then) =
      __$$RotateBlockImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RotateBlockImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$RotateBlockImpl>
    implements _$$RotateBlockImplCopyWith<$Res> {
  __$$RotateBlockImplCopyWithImpl(
      _$RotateBlockImpl _value, $Res Function(_$RotateBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RotateBlockImpl implements _RotateBlock {
  const _$RotateBlockImpl();

  @override
  String toString() {
    return 'GameEvent.rotate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RotateBlockImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ModelGameConfiguration configuration) startGame,
    required TResult Function() stop,
    required TResult Function(EnumMoveDirection direction) move,
    required TResult Function() rotate,
    required TResult Function(GameState state) publishState,
  }) {
    return rotate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? startGame,
    TResult? Function()? stop,
    TResult? Function(EnumMoveDirection direction)? move,
    TResult? Function()? rotate,
    TResult? Function(GameState state)? publishState,
  }) {
    return rotate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? startGame,
    TResult Function()? stop,
    TResult Function(EnumMoveDirection direction)? move,
    TResult Function()? rotate,
    TResult Function(GameState state)? publishState,
    required TResult orElse(),
  }) {
    if (rotate != null) {
      return rotate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveBlock value) move,
    required TResult Function(_RotateBlock value) rotate,
    required TResult Function(_PublishState value) publishState,
  }) {
    return rotate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveBlock value)? move,
    TResult? Function(_RotateBlock value)? rotate,
    TResult? Function(_PublishState value)? publishState,
  }) {
    return rotate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveBlock value)? move,
    TResult Function(_RotateBlock value)? rotate,
    TResult Function(_PublishState value)? publishState,
    required TResult orElse(),
  }) {
    if (rotate != null) {
      return rotate(this);
    }
    return orElse();
  }
}

abstract class _RotateBlock implements GameEvent {
  const factory _RotateBlock() = _$RotateBlockImpl;
}

/// @nodoc
abstract class _$$PublishStateImplCopyWith<$Res> {
  factory _$$PublishStateImplCopyWith(
          _$PublishStateImpl value, $Res Function(_$PublishStateImpl) then) =
      __$$PublishStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameState state});

  $GameStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$PublishStateImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$PublishStateImpl>
    implements _$$PublishStateImplCopyWith<$Res> {
  __$$PublishStateImplCopyWithImpl(
      _$PublishStateImpl _value, $Res Function(_$PublishStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$PublishStateImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as GameState,
    ));
  }

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStateCopyWith<$Res> get state {
    return $GameStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$PublishStateImpl implements _PublishState {
  const _$PublishStateImpl(this.state);

  @override
  final GameState state;

  @override
  String toString() {
    return 'GameEvent.publishState(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublishStateImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublishStateImplCopyWith<_$PublishStateImpl> get copyWith =>
      __$$PublishStateImplCopyWithImpl<_$PublishStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ModelGameConfiguration configuration) startGame,
    required TResult Function() stop,
    required TResult Function(EnumMoveDirection direction) move,
    required TResult Function() rotate,
    required TResult Function(GameState state) publishState,
  }) {
    return publishState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? startGame,
    TResult? Function()? stop,
    TResult? Function(EnumMoveDirection direction)? move,
    TResult? Function()? rotate,
    TResult? Function(GameState state)? publishState,
  }) {
    return publishState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? startGame,
    TResult Function()? stop,
    TResult Function(EnumMoveDirection direction)? move,
    TResult Function()? rotate,
    TResult Function(GameState state)? publishState,
    required TResult orElse(),
  }) {
    if (publishState != null) {
      return publishState(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveBlock value) move,
    required TResult Function(_RotateBlock value) rotate,
    required TResult Function(_PublishState value) publishState,
  }) {
    return publishState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveBlock value)? move,
    TResult? Function(_RotateBlock value)? rotate,
    TResult? Function(_PublishState value)? publishState,
  }) {
    return publishState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveBlock value)? move,
    TResult Function(_RotateBlock value)? rotate,
    TResult Function(_PublishState value)? publishState,
    required TResult orElse(),
  }) {
    if (publishState != null) {
      return publishState(this);
    }
    return orElse();
  }
}

abstract class _PublishState implements GameEvent {
  const factory _PublishState(final GameState state) = _$PublishStateImpl;

  GameState get state;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublishStateImplCopyWith<_$PublishStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ModelGameBlock? activeBlock,
            Map<int, Map<int, int>> gameEngineState, int score)
        tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ModelGameBlock? activeBlock,
            Map<int, Map<int, int>> gameEngineState, int score)?
        tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ModelGameBlock? activeBlock,
            Map<int, Map<int, int>> gameEngineState, int score)?
        tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Tick value) tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Tick value)? tick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Tick value)? tick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GameState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ModelGameBlock? activeBlock,
            Map<int, Map<int, int>> gameEngineState, int score)
        tick,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ModelGameBlock? activeBlock,
            Map<int, Map<int, int>> gameEngineState, int score)?
        tick,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ModelGameBlock? activeBlock,
            Map<int, Map<int, int>> gameEngineState, int score)?
        tick,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Tick value) tick,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Tick value)? tick,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Tick value)? tick,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TickImplCopyWith<$Res> {
  factory _$$TickImplCopyWith(
          _$TickImpl value, $Res Function(_$TickImpl) then) =
      __$$TickImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ModelGameBlock? activeBlock,
      Map<int, Map<int, int>> gameEngineState,
      int score});
}

/// @nodoc
class __$$TickImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$TickImpl>
    implements _$$TickImplCopyWith<$Res> {
  __$$TickImplCopyWithImpl(_$TickImpl _value, $Res Function(_$TickImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeBlock = freezed,
    Object? gameEngineState = null,
    Object? score = null,
  }) {
    return _then(_$TickImpl(
      freezed == activeBlock
          ? _value.activeBlock
          : activeBlock // ignore: cast_nullable_to_non_nullable
              as ModelGameBlock?,
      null == gameEngineState
          ? _value._gameEngineState
          : gameEngineState // ignore: cast_nullable_to_non_nullable
              as Map<int, Map<int, int>>,
      null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TickImpl implements _Tick {
  const _$TickImpl(this.activeBlock,
      final Map<int, Map<int, int>> gameEngineState, this.score)
      : _gameEngineState = gameEngineState;

  @override
  final ModelGameBlock? activeBlock;
  final Map<int, Map<int, int>> _gameEngineState;
  @override
  Map<int, Map<int, int>> get gameEngineState {
    if (_gameEngineState is EqualUnmodifiableMapView) return _gameEngineState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_gameEngineState);
  }

  @override
  final int score;

  @override
  String toString() {
    return 'GameState.tick(activeBlock: $activeBlock, gameEngineState: $gameEngineState, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickImpl &&
            (identical(other.activeBlock, activeBlock) ||
                other.activeBlock == activeBlock) &&
            const DeepCollectionEquality()
                .equals(other._gameEngineState, _gameEngineState) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeBlock,
      const DeepCollectionEquality().hash(_gameEngineState), score);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TickImplCopyWith<_$TickImpl> get copyWith =>
      __$$TickImplCopyWithImpl<_$TickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ModelGameBlock? activeBlock,
            Map<int, Map<int, int>> gameEngineState, int score)
        tick,
  }) {
    return tick(activeBlock, gameEngineState, score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ModelGameBlock? activeBlock,
            Map<int, Map<int, int>> gameEngineState, int score)?
        tick,
  }) {
    return tick?.call(activeBlock, gameEngineState, score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ModelGameBlock? activeBlock,
            Map<int, Map<int, int>> gameEngineState, int score)?
        tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(activeBlock, gameEngineState, score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Tick value) tick,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Tick value)? tick,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Tick value)? tick,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class _Tick implements GameState {
  const factory _Tick(
      final ModelGameBlock? activeBlock,
      final Map<int, Map<int, int>> gameEngineState,
      final int score) = _$TickImpl;

  ModelGameBlock? get activeBlock;
  Map<int, Map<int, int>> get gameEngineState;
  int get score;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TickImplCopyWith<_$TickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
