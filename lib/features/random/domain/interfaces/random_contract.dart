import 'package:dartz/dartz.dart';
import 'package:chuck_norris_io/core/network/failure.dart';
import 'package:chuck_norris_io/features/random/domain/entities/entities/random_entitie.dart';

/// Repository interface for create the contracts methods for Random usecases
abstract class RandomContract {
  /// abstract method for Get Random
  Future<Either<Failure, RandomEntity>> getRandom();
}
