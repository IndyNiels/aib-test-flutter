// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience')
  int? get baseExperience => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool? get isDefault => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  Sprites? get sprites => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'base_experience') int? baseExperience,
      int? height,
      @JsonKey(name: 'is_default') bool? isDefault,
      int? order,
      int? weight,
      Sprites? sprites,
      String? url});

  $SpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? baseExperience = freezed,
    Object? height = freezed,
    Object? isDefault = freezed,
    Object? order = freezed,
    Object? weight = freezed,
    Object? sprites = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      baseExperience: freezed == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res>? get sprites {
    if (_value.sprites == null) {
      return null;
    }

    return $SpritesCopyWith<$Res>(_value.sprites!, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$_PokemonCopyWith(
          _$_Pokemon value, $Res Function(_$_Pokemon) then) =
      __$$_PokemonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'base_experience') int? baseExperience,
      int? height,
      @JsonKey(name: 'is_default') bool? isDefault,
      int? order,
      int? weight,
      Sprites? sprites,
      String? url});

  @override
  $SpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class __$$_PokemonCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$_Pokemon>
    implements _$$_PokemonCopyWith<$Res> {
  __$$_PokemonCopyWithImpl(_$_Pokemon _value, $Res Function(_$_Pokemon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? baseExperience = freezed,
    Object? height = freezed,
    Object? isDefault = freezed,
    Object? order = freezed,
    Object? weight = freezed,
    Object? sprites = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Pokemon(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      baseExperience: freezed == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pokemon implements _Pokemon {
  const _$_Pokemon(
      {this.id,
      this.name,
      @JsonKey(name: 'base_experience') this.baseExperience,
      this.height,
      @JsonKey(name: 'is_default') this.isDefault,
      this.order,
      this.weight,
      this.sprites,
      this.url});

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'base_experience')
  final int? baseExperience;
  @override
  final int? height;
  @override
  @JsonKey(name: 'is_default')
  final bool? isDefault;
  @override
  final int? order;
  @override
  final int? weight;
  @override
  final Sprites? sprites;
  @override
  final String? url;

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, baseExperience: $baseExperience, height: $height, isDefault: $isDefault, order: $order, weight: $weight, sprites: $sprites, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pokemon &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, baseExperience, height,
      isDefault, order, weight, sprites, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      __$$_PokemonCopyWithImpl<_$_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {final int? id,
      final String? name,
      @JsonKey(name: 'base_experience') final int? baseExperience,
      final int? height,
      @JsonKey(name: 'is_default') final bool? isDefault,
      final int? order,
      final int? weight,
      final Sprites? sprites,
      final String? url}) = _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'base_experience')
  int? get baseExperience;
  @override
  int? get height;
  @override
  @JsonKey(name: 'is_default')
  bool? get isDefault;
  @override
  int? get order;
  @override
  int? get weight;
  @override
  Sprites? get sprites;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      throw _privateConstructorUsedError;
}
