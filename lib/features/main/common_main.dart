import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:chuck_norris_io/core/routes/page_generator.dart';

class MyApp extends StatelessWidget {
  final String? initialRoute; // route from main.dart

  const MyApp({
    Key? key,
    this.initialRoute = '/',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('es', 'ES'),
          ],
          locale: const Locale('es', 'ES'),
          title: 'ChuckNorris',
          initialRoute: initialRoute,
          onGenerateRoute: getNamedPage,
        );
      },
    );
  }
}
