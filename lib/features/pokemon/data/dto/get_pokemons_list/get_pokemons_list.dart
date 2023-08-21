import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_pokemons_list.freezed.dart';
part 'get_pokemons_list.g.dart';

@freezed
class GetPokemonsListRequestDTO with _$GetPokemonsListRequestDTO {
  const factory GetPokemonsListRequestDTO({
    required int limit,
    required int offset,
  }) = _GetPokemonsListRequestDTO;

  factory GetPokemonsListRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$GetPokemonsListRequestDTOFromJson(json);
}

@freezed
class GetPokemonsListResponseDTO with _$GetPokemonsListResponseDTO {
  const factory GetPokemonsListResponseDTO({
    List<Pokemon>? results,
  }) = _GetPokemonsListResponseDTO;

  factory GetPokemonsListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$GetPokemonsListResponseDTOFromJson(json);
}
