import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'routing/go_router.dart';
import 'ui/core/themes/main_theme.dart';

import 'config/dependencies.dart';

void main() {

  Logger.root.level = Level.ALL;

  runApp(
    MultiProvider(
      providers: providersLocal,
      child: const MyApp(),
    ),
  );
}

/// The route configuration.
final GoRouter _router = goRouter();
  class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: buildThemeData(),
      routerConfig: _router,
    );
  }
}