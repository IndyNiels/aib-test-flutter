// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pokemons_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPokemonsListRequestDTO _$$_GetPokemonsListRequestDTOFromJson(
        Map<String, dynamic> json) =>
    _$_GetPokemonsListRequestDTO(
      limit: json['limit'] as int,
      offset: json['offset'] as int,
    );

Map<String, dynamic> _$$_GetPokemonsListRequestDTOToJson(
        _$_GetPokemonsListRequestDTO instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
    };

_$_GetPokemonsListResponseDTO _$$_GetPokemonsListResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_GetPokemonsListResponseDTO(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetPokemonsListResponseDTOToJson(
        _$_GetPokemonsListResponseDTO instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
