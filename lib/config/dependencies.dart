import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../data/repositories/task/task_repository.dart';
import '../data/repositories/task/task_repository_local.dart';
import '../data/services/data_service_local.dart';

List<SingleChildWidget> get providersLocal {
  return [
    Provider.value(
      value: DataServiceLocal(),
    ),
    Provider(
      create: (context) => TaskRepositoryLocal(
          dataServiceLocal: context.read(),
      ) as TaskRepository
    ),
  ];
}
