import 'package:chuck_norris_io/features/random/presentation/view/random_chuck_norris.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Route<dynamic> _commonPageWrapper({
  required RouteSettings routeSettings,
  required Widget Function(BuildContext) builder,
}) {
  return MaterialWithModalsPageRoute(
    settings: routeSettings,
    builder: (context) => Container(
      color: Colors.black.withOpacity(0.4),
      child: SafeArea(
        bottom: false,
        top: false,
        child: builder(context),
      ),
    ),
  );
}

/// This file its for generate the principal routes
Route<dynamic> getNamedPage(RouteSettings routeSettings) {
  Widget Function(BuildContext) builder;

  switch (routeSettings.name) {
    case RandomChuckNorrisScreen.routeName:
      builder = (context) => const RandomChuckNorrisScreen();
      break;
    default:
      builder = (context) => const Material(
            child: Center(
              child: Text("Todavía no se ha aplicado."),
            ),
          );
  }

  return _commonPageWrapper(
    routeSettings: routeSettings,
    builder: builder,
  );
}
