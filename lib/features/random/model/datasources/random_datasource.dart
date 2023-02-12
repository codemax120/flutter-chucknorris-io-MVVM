import 'package:chuck_norris_io/features/random/model/models/random_model.dart';

abstract class RandomClient {
  Future<RandomModel> getRandom();
}
