// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonListState {
  List<Pokemon> get pokemonList => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonListStateCopyWith<PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListStateCopyWith<$Res> {
  factory $PokemonListStateCopyWith(
          PokemonListState value, $Res Function(PokemonListState) then) =
      _$PokemonListStateCopyWithImpl<$Res, PokemonListState>;
  @useResult
  $Res call({List<Pokemon> pokemonList, bool hasReachedMax, Status status});
}

/// @nodoc
class _$PokemonListStateCopyWithImpl<$Res, $Val extends PokemonListState>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonList = null,
    Object? hasReachedMax = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      pokemonList: null == pokemonList
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonListStateCopyWith<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  factory _$$_PokemonListStateCopyWith(
          _$_PokemonListState value, $Res Function(_$_PokemonListState) then) =
      __$$_PokemonListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pokemon> pokemonList, bool hasReachedMax, Status status});
}

/// @nodoc
class __$$_PokemonListStateCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res, _$_PokemonListState>
    implements _$$_PokemonListStateCopyWith<$Res> {
  __$$_PokemonListStateCopyWithImpl(
      _$_PokemonListState _value, $Res Function(_$_PokemonListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonList = null,
    Object? hasReachedMax = null,
    Object? status = null,
  }) {
    return _then(_$_PokemonListState(
      pokemonList: null == pokemonList
          ? _value._pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_PokemonListState implements _PokemonListState {
  const _$_PokemonListState(
      {final List<Pokemon> pokemonList = const [],
      this.hasReachedMax = false,
      this.status = Status.initial})
      : _pokemonList = pokemonList;

  final List<Pokemon> _pokemonList;
  @override
  @JsonKey()
  List<Pokemon> get pokemonList {
    if (_pokemonList is EqualUnmodifiableListView) return _pokemonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonList);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'PokemonListState(pokemonList: $pokemonList, hasReachedMax: $hasReachedMax, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonListState &&
            const DeepCollectionEquality()
                .equals(other._pokemonList, _pokemonList) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_pokemonList), hasReachedMax, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonListStateCopyWith<_$_PokemonListState> get copyWith =>
      __$$_PokemonListStateCopyWithImpl<_$_PokemonListState>(this, _$identity);
}

abstract class _PokemonListState implements PokemonListState {
  const factory _PokemonListState(
      {final List<Pokemon> pokemonList,
      final bool hasReachedMax,
      final Status status}) = _$_PokemonListState;

  @override
  List<Pokemon> get pokemonList;
  @override
  bool get hasReachedMax;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListStateCopyWith<_$_PokemonListState> get copyWith =>
      throw _privateConstructorUsedError;
}
