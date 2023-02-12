import 'package:flutter/material.dart';

class RandomChuckNorrisScreen extends StatefulWidget {
  static const routeName = "/";

  const RandomChuckNorrisScreen({super.key});

  @override
  State<RandomChuckNorrisScreen> createState() =>
      _RandomChuckNorrisScreenState();
}

class _RandomChuckNorrisScreenState extends State<RandomChuckNorrisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _principalBody(),
    );
  }

  Widget _principalBody() {
    return const SizedBox();
  }
}
