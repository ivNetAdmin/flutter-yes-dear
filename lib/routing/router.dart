import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../ui/home_feature/view_model/home_viewmodel.dart';
import '../ui/home_feature/widgets/home_screen.dart';
import 'routes.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
    path: Routes.home,
    builder: (context, state) {
      final viewModel = HomeViewModel(
        taskRepository: context.read(),
      );
      return HomeScreen(viewModel: viewModel);
    },
    ),
    GoRoute(
      path: Routes.task,
      builder: (context, state) {
        final viewModel = HomeViewModel(
          taskRepository: context.read(),
        );
        return HomeScreen(viewModel: viewModel);
      },
    ),
  ],
);