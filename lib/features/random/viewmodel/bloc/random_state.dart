part of 'random_bloc.dart';

abstract class RandomState extends Equatable {
  const RandomState();
}

// Get Random State for Random feature /// -----------------------------------/// -----------------------------------/// -----------------------------------
class InitGetRandomState extends RandomState {
  @override
  List<Object?> get props => [];
}

class LoadingGetRandomState extends RandomState {
  @override
  List<Object?> get props => [];
}

class SuccessGetRandomState extends RandomState {
  final RandomEntity randomEntity;

  const SuccessGetRandomState({
    required this.randomEntity,
  });

  @override
  List<Object?> get props => [
        randomEntity,
      ];
}

class FailedGetRandomState extends RandomState {
  @override
  List<Object?> get props => [];
}

class GetRandomState extends RandomState {
  final RandomEntity randomEntity;

  const GetRandomState({
    required this.randomEntity,
  });

  @override
  List<Object?> get props => [
        randomEntity,
      ];

  @override
  String toString() {
    return ''' 
      Random State: ${randomEntity.toString()}
      ''';
  }
}
/// -----------------------------------/// -----------------------------------/// -----------------------------------/// -----------------------------------