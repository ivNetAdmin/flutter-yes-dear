import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';

import '../../../data/repositories/task/task_repository.dart';
import '../../../domain/models/task/task.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required TaskRepository taskRepository,
  }) : _taskRepository = taskRepository
  {
    load = Command0(_load)..execute();
    deleteTask = Command1(_deleteTask);
  }

  final TaskRepository _taskRepository;
  final _log = Logger('HomeViewModel');

  late Command0 load;
  late Command1<void, int> deleteTask;

  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  Future<Result> _load() async{
    try{
      final result = await _taskRepository.getTaskList();
      switch (result) {
        case Ok<List<Task>>():
          _tasks = result.value;
          _log.fine('Loaded tasks');
        case Error<List<Task>>():
          _log.warning('Failed to load tasks', result.error);
      }
      return result;
      } finally {
        notifyListeners();
      }
  }

  Future<Result<void>> _deleteTask(int id) async {
    try {
      final resultDelete = await _taskRepository.delete(id);
      switch (resultDelete) {
        case Ok<void>():
          _log.fine('Deleted task $id');
        case Error<void>():
          _log.warning('Failed to delete task $id', resultDelete.error);
          return resultDelete;
      }

      // After deleting the booking, we need to reload the bookings list.
      // BookingRepository is the source of truth for bookings.
      final resultLoadBookings = await _taskRepository.getTaskList();
      switch (resultLoadBookings) {
        case Ok<List<Task>>():
          _tasks = resultLoadBookings.value;
          _log.fine('Loaded bookings');
        case Error<List<Task>>():
          _log.warning('Failed to load bookings', resultLoadBookings.error);
          return resultLoadBookings;
      }

      return resultLoadBookings;
    } finally {
      notifyListeners();
    }
  }
}