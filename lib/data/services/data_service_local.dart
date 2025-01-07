import 'package:yes_dear/domain/models/task/task.dart';

import 'package:yes_dear/utils/result.dart';

import 'data_service.dart';

class DataServiceLocal implements DataService {

  bool _isInitialized = false;
  int _sequentialId = 0;
  final _tasks = List<Task>.empty(growable: true);

  @override
  Future<Result<List<Task>>> getTaskList() async {
    // Initialize the repository with a default booking
    if (!_isInitialized) {
      await _createDefaultTask();
      _isInitialized = true;
    }
    return Result.ok(_mapTasksToList());
  }

  Future<void> _createDefaultTask() async {
    if (_tasks.isEmpty) {
      _tasks.add(
        Task(
          id: _sequentialId++,
          description: 'My first task!',
          createDate: DateTime.now(), //  (2025, 1, 6),
        ),
      );

      _tasks.add(
        Task(
          id: _sequentialId++,
          description: 'My next task!',
          createDate: DateTime.now(), //  (2025, 1, 6),
        ),
      );

      _tasks.add(
        Task(
          id: _sequentialId++,
          description: 'My next next task!',
          createDate: DateTime.now(), //  (2025, 1, 6),
        ),
      );
    }
  }

  List<Task> _mapTasksToList() {
    return _tasks
        .map(
          (task) =>
          Task(
              id: task.id!,
              description: task.description,
              createDate: task.createDate
          ),
    ).toList();
  }

  @override
  Future<Result<void>> deleteTask(int id) async {
    _tasks.removeWhere((task) => task.id == id);
    return const Result.ok(null);
  }
}