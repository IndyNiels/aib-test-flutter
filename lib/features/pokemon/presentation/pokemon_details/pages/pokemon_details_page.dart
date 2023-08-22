import 'package:aib_test/core/utils/enums/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/core/di/service_locator.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_cubit.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_state.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({
    super.key,
    this.pokemon,
  });

  final Pokemon? pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(pokemon?.name ?? ''),
      ),
      body: BlocProvider(
        create: (context) => PokemonDetailsCubit(
          pokemonsRepository: locator<PokemonsRepository>(),
        )..getPokemon(pokemon?.url ?? ''),
        child: const PokemonDetailsContent(),
      ),
    );
  }
}

class PokemonDetailsContent extends StatelessWidget {
  const PokemonDetailsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
      builder: (context, state) {
        if (state.status.isSuccess) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              Text(
                'Nombre: ${state.pokemon?.name ?? "N/A"}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('ID: ${state.pokemon?.id ?? "N/A"}'),
              Image.network(
                state.pokemon?.sprites?.backDefault ?? '',
                width: 150,
              ),
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
