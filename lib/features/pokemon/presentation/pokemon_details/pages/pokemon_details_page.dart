import 'package:aib_test/core/utils/enums/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/core/di/service_locator.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_cubit.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_state.dart';
import 'package:aib_test/core/utils/helpers.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Image.network(
                state.pokemon?.sprites?.backDefault ?? '',
                width: 150,
                height: 150,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      capitalizeFirstLetter(state.pokemon?.name ?? 'N/A'),
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '#00${state.pokemon?.id ?? 'N/A'}',
                      style: const TextStyle(
                        color: Color(0xFFCBCBCB),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        height:
                            1.66667, // Calculated from line-height percentage
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Description',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16), // Adding vertical spacing
              Text(
                  ' Nulla eget ante nulla. Sed placerat auctor sagittis. Suspendisse semper, urna in blandit auctor, lorem lectus posuere massa, vitae laoreet orci nunc eget magna. Fusce nec venenatis urna. In varius eros eget odio pretium, eu tincidunt est dictum.',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.57143,
                  )),
              Spacer(),
              // Text('ID: ${state.pokemon  ?? "N/A"}'),
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
