import 'package:bloc/bloc.dart';
import 'package:chuck_norris_io/features/random/domain/entities/entities/random_entitie.dart';
import 'package:chuck_norris_io/features/random/domain/usecases/get_random.dart';
import 'package:equatable/equatable.dart';

part 'random_event.dart';
part 'random_state.dart';

class RandomViewModel extends Bloc<RandomEvent, RandomState> {
  final GetRandomUseCase getRandomUseCase;

  RandomViewModel({
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
        return GetRandomState(
          randomEntity: RandomEntity.empty(),
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
