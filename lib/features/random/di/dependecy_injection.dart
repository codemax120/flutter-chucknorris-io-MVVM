import 'package:chuck_norris_io/core/injection/injection_container.dart';
import 'package:chuck_norris_io/features/random/data/datasources/random_datasource.dart';
import 'package:chuck_norris_io/features/random/data/datasources/random_datasource_impl.dart';
import 'package:chuck_norris_io/features/random/data/repositories/random_contract_impl.dart';
import 'package:chuck_norris_io/features/random/domain/interfaces/random_contract.dart';
import 'package:chuck_norris_io/features/random/domain/usecases/get_random.dart';
import 'package:chuck_norris_io/features/random/presentation/viewmodel/bloc/random_bloc.dart';

Future<void> initRandom() async {
  getIt.registerLazySingleton(() => RandomViewModel(
        getRandomUseCase: getIt(),
      ));

  getIt.registerLazySingleton(() => GetRandomUseCase(repository: getIt()));

  getIt.registerLazySingleton<RandomClient>(() => RandomClientImpl(
        apiClient: getIt(),
      ));

  getIt.registerLazySingleton<RandomContract>(() => RandomContractImpl(
        randomClient: getIt(),
      ));
}
