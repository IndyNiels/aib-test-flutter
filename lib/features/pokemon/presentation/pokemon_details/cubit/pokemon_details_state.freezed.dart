// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonDetailsState {
  Pokemon? get pokemon => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonDetailsStateCopyWith<PokemonDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsStateCopyWith<$Res> {
  factory $PokemonDetailsStateCopyWith(
          PokemonDetailsState value, $Res Function(PokemonDetailsState) then) =
      _$PokemonDetailsStateCopyWithImpl<$Res, PokemonDetailsState>;
  @useResult
  $Res call({Pokemon? pokemon, Status status});

  $PokemonCopyWith<$Res>? get pokemon;
}

/// @nodoc
class _$PokemonDetailsStateCopyWithImpl<$Res, $Val extends PokemonDetailsState>
    implements $PokemonDetailsStateCopyWith<$Res> {
  _$PokemonDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      pokemon: freezed == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res>? get pokemon {
    if (_value.pokemon == null) {
      return null;
    }

    return $PokemonCopyWith<$Res>(_value.pokemon!, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonDetailsStateCopyWith<$Res>
    implements $PokemonDetailsStateCopyWith<$Res> {
  factory _$$_PokemonDetailsStateCopyWith(_$_PokemonDetailsState value,
          $Res Function(_$_PokemonDetailsState) then) =
      __$$_PokemonDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pokemon? pokemon, Status status});

  @override
  $PokemonCopyWith<$Res>? get pokemon;
}

/// @nodoc
class __$$_PokemonDetailsStateCopyWithImpl<$Res>
    extends _$PokemonDetailsStateCopyWithImpl<$Res, _$_PokemonDetailsState>
    implements _$$_PokemonDetailsStateCopyWith<$Res> {
  __$$_PokemonDetailsStateCopyWithImpl(_$_PokemonDetailsState _value,
      $Res Function(_$_PokemonDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = freezed,
    Object? status = null,
  }) {
    return _then(_$_PokemonDetailsState(
      pokemon: freezed == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_PokemonDetailsState implements _PokemonDetailsState {
  const _$_PokemonDetailsState({this.pokemon, this.status = Status.initial});

  @override
  final Pokemon? pokemon;
  @override
  @JsonKey()
  final Status status;

  @override
  String toString() {
    return 'PokemonDetailsState(pokemon: $pokemon, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDetailsState &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokemon, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonDetailsStateCopyWith<_$_PokemonDetailsState> get copyWith =>
      __$$_PokemonDetailsStateCopyWithImpl<_$_PokemonDetailsState>(
          this, _$identity);
}

abstract class _PokemonDetailsState implements PokemonDetailsState {
  const factory _PokemonDetailsState(
      {final Pokemon? pokemon, final Status status}) = _$_PokemonDetailsState;

  @override
  Pokemon? get pokemon;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDetailsStateCopyWith<_$_PokemonDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
