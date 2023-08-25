import 'package:dartz/dartz.dart';
import 'package:aib_test/core/http/endpoints.dart';
import 'package:aib_test/core/http/http_service.dart';
import 'package:aib_test/features/pokemon/data/dto/get_pokemon/get_pokemon.dart';
import 'package:aib_test/features/pokemon/data/dto/get_pokemons_list/get_pokemons_list.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';

class ApiPokemonsRepository extends PokemonsRepository {
  ApiPokemonsRepository({
    required HttpService httpServer,
  }) : _httpServer = httpServer;
  final HttpService _httpServer;

  @override
  Future<Either<void, List<Pokemon>>> getPokemonsList(
    GetPokemonsListRequestDTO request,
  ) async {
    try {

      final resp = await _httpServer.get(
        endpoint: Endpoints.baseUrl + Endpoints.pokemons,
        arguments: request.toJson(),
      );

      GetPokemonsListResponseDTO response =
          GetPokemonsListResponseDTO.fromJson(resp.data);
          //save response.results into a new variable
          //loop through the results and make a new request for each pokemon
          //save the response into a new variable
          //return the new variable
      List<Pokemon> pokemons = []; // Create an empty list

      for (var result in response.results ?? []) {
        print(result);
        final pokemonResp = await _httpServer.get(endpoint: result.url);
        final pokemon = Pokemon.fromJson(pokemonResp.data);
        pokemons.add(pokemon); // Add each Pokemon to the list
      }


  

      return Right(pokemons ?? []);
    } catch (_) {
      return const Left(null);
    }
  }

  @override
  Future<Either<void, Pokemon?>> getPokemon(
    GetPokemonRequestDTO request,
  ) async {
    try {
      final resp = await _httpServer.get(
        endpoint: request.url,
      );

      Pokemon response = Pokemon.fromJson(resp.data);

      return Right(response);
    } catch (_) {
      return const Left(null);
    }
  }
}
