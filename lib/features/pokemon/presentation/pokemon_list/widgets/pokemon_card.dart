import 'package:flutter/material.dart';
import 'package:aib_test/core/routing/app_router.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:go_router/go_router.dart';
import 'package:aib_test/core/utils/helpers.dart'; 

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    this.pokemon,
  });

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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                pokemon?.sprites?.backDefault ?? '',
                height: 70,
                width: 70,
              ),
              Column(
                children: [
                  Text('${capitalizeFirstLetter(pokemon?.name ?? "N/A")}'),
               
                ],
              ),
             
     
            ],
          ),
        ),
      ),
    );
  }
}
