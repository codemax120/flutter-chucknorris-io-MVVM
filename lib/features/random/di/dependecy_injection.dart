import 'package:chuck_norris_io/core/injection/injection_container.dart';
import 'package:chuck_norris_io/features/random/model/contract/random_contract.dart';
import 'package:chuck_norris_io/features/random/model/contract/random_contract_impl.dart';
import 'package:chuck_norris_io/features/random/model/datasources/random_datasource.dart';
import 'package:chuck_norris_io/features/random/model/datasources/random_datasource_impl.dart';
import 'package:chuck_norris_io/features/random/view/bloc/random_bloc.dart';
import 'package:chuck_norris_io/features/random/viewmodel/usecases/get_random.dart';

Future<void> initRandom() async {
  getIt.registerLazySingleton(() => RandomBloc(
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
