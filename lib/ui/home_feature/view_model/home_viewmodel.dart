import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';

import '../../../data/repositories/task/task_repository.dart';
import '../../../domain/models/task/task_summary.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required TaskRepository taskRepository,
  }) : _taskRepository = taskRepository
  {
    load = Command0(_load)..execute();
  }

  final TaskRepository _taskRepository;
  final _log = Logger('HomeViewModel');

  late Command0 load;

  List<TaskSummary> _tasks = [];

  List<TaskSummary> get tasks => _tasks;

  Future<Result> _load() async{
    try{
      final result = await _taskRepository.getTaskSummaryList();
      switch (result) {
        case Ok<List<TaskSummary>>():
          _tasks = result.value;
          _log.fine('Loaded tasks');
        case Error<List<TaskSummary>>():
          _log.warning('Failed to load tasks', result.error);
      }
      return result;
      } finally {
        notifyListeners();
      }
  }
}