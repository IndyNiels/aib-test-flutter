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
              const Text(
                'Description',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16), // Adding vertical spacing
              const Text(
                  ' Nulla eget ante nulla. Sed placerat auctor sagittis. Suspendisse semper, urna in blandit auctor, lorem lectus posuere massa, vitae laoreet orci nunc eget magna. Fusce nec venenatis urna. In varius eros eget odio pretium, eu tincidunt est dictum.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.57143,
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Row(
                  children: [
                    PokemonImage(
                      imageUrl: state.pokemon?.sprites?.backDefault ?? '',
                    ),
                    PokemonImage(
                      imageUrl: state.pokemon?.sprites?.backDefault ?? '',
                    ),
                    PokemonImage(
                      imageUrl: state.pokemon?.sprites?.backDefault ?? '',
                    ),
                    PokemonImage(
                      imageUrl: state.pokemon?.sprites?.backDefault ?? '',
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ability 1',
                      style: AbilityTextStyle.myTextStyle,
                    ),
                    Text(
                      'Ability 2',
                      style: AbilityTextStyle.myTextStyle,
                    ),
                    Text(
                      'Ability 3',
                      style: AbilityTextStyle.myTextStyle,
                    ),
                    Text(
                      'Ability 4',
                      style: AbilityTextStyle.myTextStyle,
                    )
                  ],
                ),
              ),
              const Text(
                  ' Nulla eget ante nulla. Sed placerat auctor sagittis. Suspendisse semper, urna in blandit auctor, lorem lectus posuere massa, vitae laoreet orci nunc eget magna. Fusce nec venenatis urna. In varius eros eget odio pretium, eu tincidunt est dictum.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.57143,
                  )
                  ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                         style: CustomButtonStyle.myButtonStyle,
                        child: Text('Previous'),
                      ),
                      TextButton(
                        onPressed: () {},
                          style: CustomButtonStyle.myButtonStyle,
                        child: Text('Next'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class PokemonImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  PokemonImage({
    required this.imageUrl,
    this.width = 83,
    this.height = 54,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: width,
      height: height,
    );
  }
}

class AbilityTextStyle {
  static const TextStyle myTextStyle = TextStyle(
    color: Color(0xFF7E7E7E),
    fontFamily: 'Roboto',
    fontSize: 13,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 1.53846,
    letterSpacing: -0.08,
  );
}



class CustomButtonStyle {
  static ButtonStyle myButtonStyle = TextButton.styleFrom(
    textStyle: TextStyle(fontSize: 16),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    backgroundColor: Color(0xFFEAF0FC),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7),
    ),
  );
}