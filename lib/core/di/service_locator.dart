import 'package:aib_test/core/http/http_service.dart';
import 'package:aib_test/features/pokemon/data/repository/api_pokemons_repository.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
const useMocks = false;

void serviceLocatorSetUp() {
  _registerRepository();
  _registerCubits();
  _registerServices();
}

void _registerServices() {
  locator.registerLazySingleton<HttpService>(
    () => HttpService(),
  );
}

void _registerRepository() {
  locator.registerLazySingleton<PokemonsRepository>(
    () => ApiPokemonsRepository(
      httpServer: locator<HttpService>(),
    ),
  );
}

void _registerCubits() {}
