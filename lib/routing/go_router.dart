import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../ui/detail_feature/detail_screen.dart';
import '../ui/home_feature/view_model/home_viewmodel.dart';
import '../ui/home_feature/widgets/home_screen.dart';

GoRouter goRouter() {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          final viewModel = HomeViewModel(
              taskRepository: context.read()
          );
          return HomeScreen(viewModel: viewModel);
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'details',
            builder: (BuildContext context, GoRouterState state) {
              return const DetailsScreen();
            },
          ),
        ],
      ),
    ],
  );
}