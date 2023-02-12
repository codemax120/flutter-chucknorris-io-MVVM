import 'package:chuck_norris_io/features/random/model/contract/random_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:chuck_norris_io/core/network/failure.dart';
import 'package:chuck_norris_io/features/random/viewmodel/entities/random_entitie.dart';
import 'package:chuck_norris_io/features/random/model/datasources/random_datasource.dart';

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
