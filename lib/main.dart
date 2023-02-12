import 'package:flutter/material.dart';
import 'package:chuck_norris_io/features/main/common_main.dart';
import 'package:chuck_norris_io/core/injection/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDependecies();
  await initFeaturesDependecies();
  runApp(const MyApp());
}
