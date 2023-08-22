import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/core/di/service_locator.dart';
import 'package:aib_test/core/utils/enums/status.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_list/cubit/pokemon_list_cubit.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_list/cubit/pokemon_list_state.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_list/widgets/bottom_loader.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_list/widgets/pokemon_card.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PokemonListCubit(pokemonsRepository: locator<PokemonsRepository>())
            ..fetchPokemons(),
      child: const PokemonListContent(),
    );
  }
}

class PokemonListContent extends StatefulWidget {
  const PokemonListContent({
    super.key,
  });

  @override
  State<PokemonListContent> createState() => _PokemonListContentState();
}

class _PokemonListContentState extends State<PokemonListContent> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonListCubit, PokemonListState>(
      builder: (context, state) {
        switch (state.status) {
          case Status.error:
            return const Center(child: Text('Fallo al pedir los pokemons'));
          case Status.loading:
          case Status.success:
            if (state.pokemonList.isEmpty) {
              return const Center(child: Text('No hay pokemons'));
            }
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return index >= state.pokemonList.length
                    ? const BottomLoader()
                    : PokemonCard(pokemon: state.pokemonList[index]);
              },
              itemCount: state.hasReachedMax
                  ? state.pokemonList.length
                  : state.pokemonList.length + 1,
              controller: _scrollController,
            );
          case Status.initial:
          case Status.loaded:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<PokemonListCubit>().fetchPokemons();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
