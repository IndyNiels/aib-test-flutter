import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_pokemon.freezed.dart';
part 'get_pokemon.g.dart';

@freezed
class GetPokemonRequestDTO with _$GetPokemonRequestDTO {
  const factory GetPokemonRequestDTO({
    required String url,
  }) = _GetPokemonRequestDTO;

  factory GetPokemonRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$GetPokemonRequestDTOFromJson(json);
}
