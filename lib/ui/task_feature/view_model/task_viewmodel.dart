import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';

import '../../../data/repositories/task/task_repository.dart';

class TaskViewModel extends ChangeNotifier {
  TaskViewModel({
    required TaskRepository taskRepository,
  }) : _taskRepository = taskRepository {}

  final TaskRepository _taskRepository;
  final _log = Logger('TaskViewModel');

}