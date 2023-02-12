import 'package:chuck_norris_io/features/random/repositories/models/random_model.dart';

abstract class RandomClient {
  Future<RandomModel> getRandom();
}
