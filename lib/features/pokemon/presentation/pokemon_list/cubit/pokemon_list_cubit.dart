import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/core/utils/constants/app_contants.dart';
import 'package:aib_test/core/utils/enums/status.dart';
import 'package:aib_test/features/pokemon/data/dto/get_pokemons_list/get_pokemons_list.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_list/cubit/pokemon_list_state.dart';

class PokemonListCubit extends Cubit<PokemonListState> {
  PokemonListCubit({
    required PokemonsRepository pokemonsRepository,
  })  : _pokemonsRepository = pokemonsRepository,
        super(const PokemonListState());

  final PokemonsRepository _pokemonsRepository;

  Future<void> fetchPokemons() async {
    if (state.hasReachedMax) return;
    if (state.status.isLoading) return;

    emit(
      state.copyWith(
        status: Status.loading,
      ),
    );

    if (state.status.isInitial) {
      GetPokemonsListRequestDTO pokemonsRequest = GetPokemonsListRequestDTO(
        offset: AppConstants.defaultPage,
        limit: AppConstants.defaultSize,
      );
      final either = await _pokemonsRepository.getPokemonsList(pokemonsRequest);
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
              pokemonList: response,
              hasReachedMax: false,
            ),
          );
        },
      );
    }
    GetPokemonsListRequestDTO pokemonsRequest = GetPokemonsListRequestDTO(
      offset: state.pokemonList.length,
      limit: AppConstants.defaultSize,
    );
    final either = await _pokemonsRepository.getPokemonsList(pokemonsRequest);
    return either.fold(
      (failure) {
        emit(
          state.copyWith(
            status: Status.error,
          ),
        );
      },
      (response) {
        response.isEmpty
            ? emit(state.copyWith(hasReachedMax: true))
            : emit(
                state.copyWith(
                  status: Status.success,
                  pokemonList: List.of(state.pokemonList)..addAll(response),
                  hasReachedMax: false,
                ),
              );
      },
    );
  }
}
