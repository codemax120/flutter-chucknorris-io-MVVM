import 'dart:convert';

import 'package:chuck_norris_io/core/network/server_api_client.dart';
import 'package:chuck_norris_io/features/random/repositories/models/random_model.dart';
import 'package:chuck_norris_io/features/random/repositories/datasources/random_datasource.dart';

class RandomClientImpl implements RandomClient {
  final ServerApiClient apiClient;

  RandomClientImpl({
    required this.apiClient,
  });

  @override
  Future<RandomModel> getRandom() async {
    final response = await apiClient.get('/jokes/random');
    return RandomModel.fromJson(jsonDecode(response.body));
  }
}
