import 'package:chuck_norris_io/core/network/network_info.dart';
import 'package:chuck_norris_io/core/network/server_api_client.dart';
import 'package:chuck_norris_io/features/random/di/dependecy_injection.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initDependecies() {
  // Network Handler
  getIt.registerLazySingleton<NetworkInfoRepository>(
    () => NetworkInfoRepositoryImpl(),
  );
  // Server API Client
  getIt.registerLazySingleton(
    () => ServerApiClient(
      networkInfoRepository: getIt(),
    ),
  );
}

Future<void> initFeaturesDependecies() async {
  getIt.pushNewScope();
  await initRandom();
}
