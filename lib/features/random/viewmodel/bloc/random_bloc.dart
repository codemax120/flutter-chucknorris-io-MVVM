// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:chuck_norris_io/features/random/viewmodel/entities/random_entitie.dart';
import 'package:chuck_norris_io/features/random/viewmodel/usecases/get_random.dart';
import 'package:equatable/equatable.dart';

part 'random_event.dart';
part 'random_state.dart';

class RandomBloc extends Bloc<RandomEvent, RandomState> {
  final GetRandomUseCase getRandomUseCase;

  RandomBloc({
    required this.getRandomUseCase,
  }) : super(InitGetRandomState()) {
    on<GetRandomEvent>((event, emit) async {
      emit(await _getRandom(event: event, emit: emit));
    });
  }

  /// This method getRandom balance from the stream
  Future<GetRandomState> _getRandom({
    required GetRandomEvent event,
    required Emitter<RandomState> emit,
  }) async {
    emit(LoadingGetRandomState());

    final result = await getRandomUseCase(
      const ParamsUseCaseGetRandom(),
    );

    return result.fold(
      (l) {
        emit(FailedGetRandomState());
        emit(InitGetRandomState());
        return const GetRandomState(
          randomEntity: RandomEntity(
            id: "",
            url: "",
            value: "",
            iconUrl: "",
            createdAt: "",
            updatedAt: "",
            categories: [],
          ),
        );
      },
      (resp) {
        emit(
          SuccessGetRandomState(randomEntity: resp.response),
        );
        return GetRandomState(randomEntity: resp.response);
      },
    );
  }
}
