import 'package:flutter/material.dart';
import 'package:aib_test/core/routing/app_router.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:go_router/go_router.dart';
import 'package:aib_test/core/utils/helpers.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    Key? key,
    this.pokemon,
  }) : super(key: key);

  final Pokemon? pokemon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.pushNamed(AppRoute.pokemonDetails.name, extra: pokemon),
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildPokemonImage(),
                  ),
                  _buildPokemonDetails(),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black, // Change the color as needed
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget _buildPokemonImage() {
  final imageUrl = pokemon?.sprites?.backDefault;
  
  if (imageUrl != null && imageUrl.isNotEmpty) {
    return Image.network(
      imageUrl,
      height: 70,
      width: 70,
    );
  } else {
    return 
    // Text(
    //   'N/A',
    //   style: TextStyle(
    //     fontSize: 16,
    //     fontWeight: FontWeight.bold,
    //   ),
    // );
    GrayBox();
  }
}

  Widget _buildPokemonDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildNameAndId(),
        Row(
          children: [
            Text('#type_1'),
            SizedBox(width: 10.0), // Add spacing between type labels
            Text('#type_2'),
          ],
        ),
      ],
    );
  }

  Widget _buildNameAndId() {
    return Row(
      children: [
        Text(
          capitalizeFirstLetter(pokemon?.name ?? 'N/A'),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text('#00${pokemon?.id ?? 'N/A'}'),
        ),
      ],
    );
  }
}


class GrayBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      color: Colors.amber,
    );
  }
}
