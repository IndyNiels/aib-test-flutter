// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pokemons_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPokemonsListRequestDTO _$GetPokemonsListRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _GetPokemonsListRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$GetPokemonsListRequestDTO {
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPokemonsListRequestDTOCopyWith<GetPokemonsListRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPokemonsListRequestDTOCopyWith<$Res> {
  factory $GetPokemonsListRequestDTOCopyWith(GetPokemonsListRequestDTO value,
          $Res Function(GetPokemonsListRequestDTO) then) =
      _$GetPokemonsListRequestDTOCopyWithImpl<$Res, GetPokemonsListRequestDTO>;
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class _$GetPokemonsListRequestDTOCopyWithImpl<$Res,
        $Val extends GetPokemonsListRequestDTO>
    implements $GetPokemonsListRequestDTOCopyWith<$Res> {
  _$GetPokemonsListRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPokemonsListRequestDTOCopyWith<$Res>
    implements $GetPokemonsListRequestDTOCopyWith<$Res> {
  factory _$$_GetPokemonsListRequestDTOCopyWith(
          _$_GetPokemonsListRequestDTO value,
          $Res Function(_$_GetPokemonsListRequestDTO) then) =
      __$$_GetPokemonsListRequestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class __$$_GetPokemonsListRequestDTOCopyWithImpl<$Res>
    extends _$GetPokemonsListRequestDTOCopyWithImpl<$Res,
        _$_GetPokemonsListRequestDTO>
    implements _$$_GetPokemonsListRequestDTOCopyWith<$Res> {
  __$$_GetPokemonsListRequestDTOCopyWithImpl(
      _$_GetPokemonsListRequestDTO _value,
      $Res Function(_$_GetPokemonsListRequestDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$_GetPokemonsListRequestDTO(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPokemonsListRequestDTO implements _GetPokemonsListRequestDTO {
  const _$_GetPokemonsListRequestDTO(
      {required this.limit, required this.offset});

  factory _$_GetPokemonsListRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GetPokemonsListRequestDTOFromJson(json);

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'GetPokemonsListRequestDTO(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPokemonsListRequestDTO &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPokemonsListRequestDTOCopyWith<_$_GetPokemonsListRequestDTO>
      get copyWith => __$$_GetPokemonsListRequestDTOCopyWithImpl<
          _$_GetPokemonsListRequestDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPokemonsListRequestDTOToJson(
      this,
    );
  }
}

abstract class _GetPokemonsListRequestDTO implements GetPokemonsListRequestDTO {
  const factory _GetPokemonsListRequestDTO(
      {required final int limit,
      required final int offset}) = _$_GetPokemonsListRequestDTO;

  factory _GetPokemonsListRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_GetPokemonsListRequestDTO.fromJson;

  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$_GetPokemonsListRequestDTOCopyWith<_$_GetPokemonsListRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

GetPokemonsListResponseDTO _$GetPokemonsListResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _GetPokemonsListResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$GetPokemonsListResponseDTO {
  List<Pokemon>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPokemonsListResponseDTOCopyWith<GetPokemonsListResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPokemonsListResponseDTOCopyWith<$Res> {
  factory $GetPokemonsListResponseDTOCopyWith(GetPokemonsListResponseDTO value,
          $Res Function(GetPokemonsListResponseDTO) then) =
      _$GetPokemonsListResponseDTOCopyWithImpl<$Res,
          GetPokemonsListResponseDTO>;
  @useResult
  $Res call({List<Pokemon>? results});
}

/// @nodoc
class _$GetPokemonsListResponseDTOCopyWithImpl<$Res,
        $Val extends GetPokemonsListResponseDTO>
    implements $GetPokemonsListResponseDTOCopyWith<$Res> {
  _$GetPokemonsListResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPokemonsListResponseDTOCopyWith<$Res>
    implements $GetPokemonsListResponseDTOCopyWith<$Res> {
  factory _$$_GetPokemonsListResponseDTOCopyWith(
          _$_GetPokemonsListResponseDTO value,
          $Res Function(_$_GetPokemonsListResponseDTO) then) =
      __$$_GetPokemonsListResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pokemon>? results});
}

/// @nodoc
class __$$_GetPokemonsListResponseDTOCopyWithImpl<$Res>
    extends _$GetPokemonsListResponseDTOCopyWithImpl<$Res,
        _$_GetPokemonsListResponseDTO>
    implements _$$_GetPokemonsListResponseDTOCopyWith<$Res> {
  __$$_GetPokemonsListResponseDTOCopyWithImpl(
      _$_GetPokemonsListResponseDTO _value,
      $Res Function(_$_GetPokemonsListResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_GetPokemonsListResponseDTO(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPokemonsListResponseDTO implements _GetPokemonsListResponseDTO {
  const _$_GetPokemonsListResponseDTO({final List<Pokemon>? results})
      : _results = results;

  factory _$_GetPokemonsListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GetPokemonsListResponseDTOFromJson(json);

  final List<Pokemon>? _results;
  @override
  List<Pokemon>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetPokemonsListResponseDTO(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPokemonsListResponseDTO &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPokemonsListResponseDTOCopyWith<_$_GetPokemonsListResponseDTO>
      get copyWith => __$$_GetPokemonsListResponseDTOCopyWithImpl<
          _$_GetPokemonsListResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPokemonsListResponseDTOToJson(
      this,
    );
  }
}

abstract class _GetPokemonsListResponseDTO
    implements GetPokemonsListResponseDTO {
  const factory _GetPokemonsListResponseDTO({final List<Pokemon>? results}) =
      _$_GetPokemonsListResponseDTO;

  factory _GetPokemonsListResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_GetPokemonsListResponseDTO.fromJson;

  @override
  List<Pokemon>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_GetPokemonsListResponseDTOCopyWith<_$_GetPokemonsListResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}
