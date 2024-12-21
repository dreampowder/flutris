// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_engine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEngineEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ModelGameConfiguration configuration) start,
    required TResult Function(GameEngineState state) publishState,
    required TResult Function() stop,
    required TResult Function(bool isLeft) moveCurrentBlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? start,
    TResult? Function(GameEngineState state)? publishState,
    TResult? Function()? stop,
    TResult? Function(bool isLeft)? moveCurrentBlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? start,
    TResult Function(GameEngineState state)? publishState,
    TResult Function()? stop,
    TResult Function(bool isLeft)? moveCurrentBlock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) start,
    required TResult Function(_PublishState value) publishState,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveCurrentBlock value) moveCurrentBlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? start,
    TResult? Function(_PublishState value)? publishState,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveCurrentBlock value)? moveCurrentBlock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? start,
    TResult Function(_PublishState value)? publishState,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveCurrentBlock value)? moveCurrentBlock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEngineEventCopyWith<$Res> {
  factory $GameEngineEventCopyWith(
          GameEngineEvent value, $Res Function(GameEngineEvent) then) =
      _$GameEngineEventCopyWithImpl<$Res, GameEngineEvent>;
}

/// @nodoc
class _$GameEngineEventCopyWithImpl<$Res, $Val extends GameEngineEvent>
    implements $GameEngineEventCopyWith<$Res> {
  _$GameEngineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEngineEvent
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
    extends _$GameEngineEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEngineEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GameEngineEvent.started()';
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
    required TResult Function(ModelGameConfiguration configuration) start,
    required TResult Function(GameEngineState state) publishState,
    required TResult Function() stop,
    required TResult Function(bool isLeft) moveCurrentBlock,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? start,
    TResult? Function(GameEngineState state)? publishState,
    TResult? Function()? stop,
    TResult? Function(bool isLeft)? moveCurrentBlock,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? start,
    TResult Function(GameEngineState state)? publishState,
    TResult Function()? stop,
    TResult Function(bool isLeft)? moveCurrentBlock,
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
    required TResult Function(_StartGame value) start,
    required TResult Function(_PublishState value) publishState,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveCurrentBlock value) moveCurrentBlock,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? start,
    TResult? Function(_PublishState value)? publishState,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveCurrentBlock value)? moveCurrentBlock,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? start,
    TResult Function(_PublishState value)? publishState,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveCurrentBlock value)? moveCurrentBlock,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GameEngineEvent {
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
    extends _$GameEngineEventCopyWithImpl<$Res, _$StartGameImpl>
    implements _$$StartGameImplCopyWith<$Res> {
  __$$StartGameImplCopyWithImpl(
      _$StartGameImpl _value, $Res Function(_$StartGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEngineEvent
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
    return 'GameEngineEvent.start(configuration: $configuration)';
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

  /// Create a copy of GameEngineEvent
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
    required TResult Function(ModelGameConfiguration configuration) start,
    required TResult Function(GameEngineState state) publishState,
    required TResult Function() stop,
    required TResult Function(bool isLeft) moveCurrentBlock,
  }) {
    return start(configuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? start,
    TResult? Function(GameEngineState state)? publishState,
    TResult? Function()? stop,
    TResult? Function(bool isLeft)? moveCurrentBlock,
  }) {
    return start?.call(configuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? start,
    TResult Function(GameEngineState state)? publishState,
    TResult Function()? stop,
    TResult Function(bool isLeft)? moveCurrentBlock,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(configuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) start,
    required TResult Function(_PublishState value) publishState,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveCurrentBlock value) moveCurrentBlock,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? start,
    TResult? Function(_PublishState value)? publishState,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveCurrentBlock value)? moveCurrentBlock,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? start,
    TResult Function(_PublishState value)? publishState,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveCurrentBlock value)? moveCurrentBlock,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _StartGame implements GameEngineEvent {
  const factory _StartGame(final ModelGameConfiguration configuration) =
      _$StartGameImpl;

  ModelGameConfiguration get configuration;

  /// Create a copy of GameEngineEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartGameImplCopyWith<_$StartGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PublishStateImplCopyWith<$Res> {
  factory _$$PublishStateImplCopyWith(
          _$PublishStateImpl value, $Res Function(_$PublishStateImpl) then) =
      __$$PublishStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameEngineState state});

  $GameEngineStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$PublishStateImplCopyWithImpl<$Res>
    extends _$GameEngineEventCopyWithImpl<$Res, _$PublishStateImpl>
    implements _$$PublishStateImplCopyWith<$Res> {
  __$$PublishStateImplCopyWithImpl(
      _$PublishStateImpl _value, $Res Function(_$PublishStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEngineEvent
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
              as GameEngineState,
    ));
  }

  /// Create a copy of GameEngineEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameEngineStateCopyWith<$Res> get state {
    return $GameEngineStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$PublishStateImpl implements _PublishState {
  const _$PublishStateImpl(this.state);

  @override
  final GameEngineState state;

  @override
  String toString() {
    return 'GameEngineEvent.publishState(state: $state)';
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

  /// Create a copy of GameEngineEvent
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
    required TResult Function(ModelGameConfiguration configuration) start,
    required TResult Function(GameEngineState state) publishState,
    required TResult Function() stop,
    required TResult Function(bool isLeft) moveCurrentBlock,
  }) {
    return publishState(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? start,
    TResult? Function(GameEngineState state)? publishState,
    TResult? Function()? stop,
    TResult? Function(bool isLeft)? moveCurrentBlock,
  }) {
    return publishState?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? start,
    TResult Function(GameEngineState state)? publishState,
    TResult Function()? stop,
    TResult Function(bool isLeft)? moveCurrentBlock,
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
    required TResult Function(_StartGame value) start,
    required TResult Function(_PublishState value) publishState,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveCurrentBlock value) moveCurrentBlock,
  }) {
    return publishState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? start,
    TResult? Function(_PublishState value)? publishState,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveCurrentBlock value)? moveCurrentBlock,
  }) {
    return publishState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? start,
    TResult Function(_PublishState value)? publishState,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveCurrentBlock value)? moveCurrentBlock,
    required TResult orElse(),
  }) {
    if (publishState != null) {
      return publishState(this);
    }
    return orElse();
  }
}

abstract class _PublishState implements GameEngineEvent {
  const factory _PublishState(final GameEngineState state) = _$PublishStateImpl;

  GameEngineState get state;

  /// Create a copy of GameEngineEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublishStateImplCopyWith<_$PublishStateImpl> get copyWith =>
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
    extends _$GameEngineEventCopyWithImpl<$Res, _$StopGameImpl>
    implements _$$StopGameImplCopyWith<$Res> {
  __$$StopGameImplCopyWithImpl(
      _$StopGameImpl _value, $Res Function(_$StopGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEngineEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopGameImpl implements _StopGame {
  const _$StopGameImpl();

  @override
  String toString() {
    return 'GameEngineEvent.stop()';
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
    required TResult Function(ModelGameConfiguration configuration) start,
    required TResult Function(GameEngineState state) publishState,
    required TResult Function() stop,
    required TResult Function(bool isLeft) moveCurrentBlock,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? start,
    TResult? Function(GameEngineState state)? publishState,
    TResult? Function()? stop,
    TResult? Function(bool isLeft)? moveCurrentBlock,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? start,
    TResult Function(GameEngineState state)? publishState,
    TResult Function()? stop,
    TResult Function(bool isLeft)? moveCurrentBlock,
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
    required TResult Function(_StartGame value) start,
    required TResult Function(_PublishState value) publishState,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveCurrentBlock value) moveCurrentBlock,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? start,
    TResult? Function(_PublishState value)? publishState,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveCurrentBlock value)? moveCurrentBlock,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? start,
    TResult Function(_PublishState value)? publishState,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveCurrentBlock value)? moveCurrentBlock,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _StopGame implements GameEngineEvent {
  const factory _StopGame() = _$StopGameImpl;
}

/// @nodoc
abstract class _$$MoveCurrentBlockImplCopyWith<$Res> {
  factory _$$MoveCurrentBlockImplCopyWith(_$MoveCurrentBlockImpl value,
          $Res Function(_$MoveCurrentBlockImpl) then) =
      __$$MoveCurrentBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLeft});
}

/// @nodoc
class __$$MoveCurrentBlockImplCopyWithImpl<$Res>
    extends _$GameEngineEventCopyWithImpl<$Res, _$MoveCurrentBlockImpl>
    implements _$$MoveCurrentBlockImplCopyWith<$Res> {
  __$$MoveCurrentBlockImplCopyWithImpl(_$MoveCurrentBlockImpl _value,
      $Res Function(_$MoveCurrentBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEngineEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLeft = null,
  }) {
    return _then(_$MoveCurrentBlockImpl(
      null == isLeft
          ? _value.isLeft
          : isLeft // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MoveCurrentBlockImpl implements _MoveCurrentBlock {
  const _$MoveCurrentBlockImpl(this.isLeft);

  @override
  final bool isLeft;

  @override
  String toString() {
    return 'GameEngineEvent.moveCurrentBlock(isLeft: $isLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveCurrentBlockImpl &&
            (identical(other.isLeft, isLeft) || other.isLeft == isLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLeft);

  /// Create a copy of GameEngineEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveCurrentBlockImplCopyWith<_$MoveCurrentBlockImpl> get copyWith =>
      __$$MoveCurrentBlockImplCopyWithImpl<_$MoveCurrentBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ModelGameConfiguration configuration) start,
    required TResult Function(GameEngineState state) publishState,
    required TResult Function() stop,
    required TResult Function(bool isLeft) moveCurrentBlock,
  }) {
    return moveCurrentBlock(isLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ModelGameConfiguration configuration)? start,
    TResult? Function(GameEngineState state)? publishState,
    TResult? Function()? stop,
    TResult? Function(bool isLeft)? moveCurrentBlock,
  }) {
    return moveCurrentBlock?.call(isLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ModelGameConfiguration configuration)? start,
    TResult Function(GameEngineState state)? publishState,
    TResult Function()? stop,
    TResult Function(bool isLeft)? moveCurrentBlock,
    required TResult orElse(),
  }) {
    if (moveCurrentBlock != null) {
      return moveCurrentBlock(isLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartGame value) start,
    required TResult Function(_PublishState value) publishState,
    required TResult Function(_StopGame value) stop,
    required TResult Function(_MoveCurrentBlock value) moveCurrentBlock,
  }) {
    return moveCurrentBlock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartGame value)? start,
    TResult? Function(_PublishState value)? publishState,
    TResult? Function(_StopGame value)? stop,
    TResult? Function(_MoveCurrentBlock value)? moveCurrentBlock,
  }) {
    return moveCurrentBlock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartGame value)? start,
    TResult Function(_PublishState value)? publishState,
    TResult Function(_StopGame value)? stop,
    TResult Function(_MoveCurrentBlock value)? moveCurrentBlock,
    required TResult orElse(),
  }) {
    if (moveCurrentBlock != null) {
      return moveCurrentBlock(this);
    }
    return orElse();
  }
}

abstract class _MoveCurrentBlock implements GameEngineEvent {
  const factory _MoveCurrentBlock(final bool isLeft) = _$MoveCurrentBlockImpl;

  bool get isLeft;

  /// Create a copy of GameEngineEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveCurrentBlockImplCopyWith<_$MoveCurrentBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameEngineState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueKey key, List<ModelGameBlock> blocks)
        gameUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UniqueKey key, List<ModelGameBlock> blocks)? gameUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueKey key, List<ModelGameBlock> blocks)? gameUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GameUpdate value) gameUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GameUpdate value)? gameUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GameUpdate value)? gameUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEngineStateCopyWith<$Res> {
  factory $GameEngineStateCopyWith(
          GameEngineState value, $Res Function(GameEngineState) then) =
      _$GameEngineStateCopyWithImpl<$Res, GameEngineState>;
}

/// @nodoc
class _$GameEngineStateCopyWithImpl<$Res, $Val extends GameEngineState>
    implements $GameEngineStateCopyWith<$Res> {
  _$GameEngineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEngineState
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
    extends _$GameEngineStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEngineState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GameEngineState.initial()';
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
    required TResult Function(UniqueKey key, List<ModelGameBlock> blocks)
        gameUpdate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UniqueKey key, List<ModelGameBlock> blocks)? gameUpdate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueKey key, List<ModelGameBlock> blocks)? gameUpdate,
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
    required TResult Function(_GameUpdate value) gameUpdate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GameUpdate value)? gameUpdate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GameUpdate value)? gameUpdate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameEngineState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GameUpdateImplCopyWith<$Res> {
  factory _$$GameUpdateImplCopyWith(
          _$GameUpdateImpl value, $Res Function(_$GameUpdateImpl) then) =
      __$$GameUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueKey key, List<ModelGameBlock> blocks});
}

/// @nodoc
class __$$GameUpdateImplCopyWithImpl<$Res>
    extends _$GameEngineStateCopyWithImpl<$Res, _$GameUpdateImpl>
    implements _$$GameUpdateImplCopyWith<$Res> {
  __$$GameUpdateImplCopyWithImpl(
      _$GameUpdateImpl _value, $Res Function(_$GameUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEngineState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? blocks = null,
  }) {
    return _then(_$GameUpdateImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as UniqueKey,
      null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<ModelGameBlock>,
    ));
  }
}

/// @nodoc

class _$GameUpdateImpl implements _GameUpdate {
  const _$GameUpdateImpl(this.key, final List<ModelGameBlock> blocks)
      : _blocks = blocks;

  @override
  final UniqueKey key;
  final List<ModelGameBlock> _blocks;
  @override
  List<ModelGameBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  String toString() {
    return 'GameEngineState.gameUpdate(key: $key, blocks: $blocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameUpdateImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(_blocks));

  /// Create a copy of GameEngineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameUpdateImplCopyWith<_$GameUpdateImpl> get copyWith =>
      __$$GameUpdateImplCopyWithImpl<_$GameUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueKey key, List<ModelGameBlock> blocks)
        gameUpdate,
  }) {
    return gameUpdate(key, blocks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UniqueKey key, List<ModelGameBlock> blocks)? gameUpdate,
  }) {
    return gameUpdate?.call(key, blocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueKey key, List<ModelGameBlock> blocks)? gameUpdate,
    required TResult orElse(),
  }) {
    if (gameUpdate != null) {
      return gameUpdate(key, blocks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GameUpdate value) gameUpdate,
  }) {
    return gameUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GameUpdate value)? gameUpdate,
  }) {
    return gameUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GameUpdate value)? gameUpdate,
    required TResult orElse(),
  }) {
    if (gameUpdate != null) {
      return gameUpdate(this);
    }
    return orElse();
  }
}

abstract class _GameUpdate implements GameEngineState {
  const factory _GameUpdate(
          final UniqueKey key, final List<ModelGameBlock> blocks) =
      _$GameUpdateImpl;

  UniqueKey get key;
  List<ModelGameBlock> get blocks;

  /// Create a copy of GameEngineState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameUpdateImplCopyWith<_$GameUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
