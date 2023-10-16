import 'package:chuck_norris_io/features/random/data/datasources/random_datasource.dart';
import 'package:chuck_norris_io/features/random/domain/entities/entities/random_entitie.dart';
import 'package:chuck_norris_io/features/random/domain/interfaces/random_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:chuck_norris_io/core/network/failure.dart';

class RandomContractImpl implements RandomContract {
  final RandomClient randomClient;

  RandomContractImpl({
    required this.randomClient,
  });

  @override
  Future<Either<Failure, RandomEntity>> getRandom() async {
    try {
      final response = await randomClient.getRandom();
      return Right(response);
    } on Object {
      return Left(ServerFailure());
    }
  }
}
