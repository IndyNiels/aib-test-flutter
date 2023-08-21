import 'package:aib_test/core/utils/enums/status.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_state.freezed.dart';

@freezed
class PokemonListState with _$PokemonListState {
  const factory PokemonListState({
    @Default([]) List<Pokemon> pokemonList,
    @Default(false) bool hasReachedMax,
    @Default(Status.initial) Status status,
  }) = _PokemonListState;
}
