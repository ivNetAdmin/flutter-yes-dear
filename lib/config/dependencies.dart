import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../data/repositories/task/task_repository.dart';
import '../data/repositories/task/task_repository_local.dart';

List<SingleChildWidget> get providersLocal {
  return [
    Provider(
      create: (context) => TaskRepositoryLocal(
      ) as TaskRepository,
    ),
  ];
}
