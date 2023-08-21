import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/core/utils/enums/status.dart';
import 'package:aib_test/features/pokemon/data/dto/get_pokemon/get_pokemon.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_state.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetailsState> {
  PokemonDetailsCubit({
    required PokemonsRepository pokemonsRepository,
  })  : _pokemonsRepository = pokemonsRepository,
        super(const PokemonDetailsState());

  final PokemonsRepository _pokemonsRepository;

  Future<void> getPokemon(String url) async {
    if (state.status.isInitial) {
      GetPokemonRequestDTO pokemonsRequest = GetPokemonRequestDTO(
        url: url,
      );
      final either = await _pokemonsRepository.getPokemon(pokemonsRequest);
      return either.fold(
        (failure) {
          emit(
            state.copyWith(
              status: Status.error,
            ),
          );
        },
        (response) {
          emit(
            state.copyWith(
              status: Status.success,
              pokemon: response,
            ),
          );
        },
      );
    }
  }
}
