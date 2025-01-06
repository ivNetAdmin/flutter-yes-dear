import '../../../domain/models/task/task_summary.dart';
import '../../../utils/result.dart';
import 'task_repository.dart';

class TaskRepositoryLocal implements TaskRepository {

  bool _isInitialized = false;
  int _sequentialId = 0;

  final _tasks = List<TaskSummary>.empty(growable: true);

  @override
  Future<Result<List<TaskSummary>>> getTaskSummaryList() async {
    // Initialize the repository with a default booking
    if (!_isInitialized) {
      await _createDefaultTask();
      _isInitialized = true;
    }
    return Result.ok(_createSummaries());
  }

  List<TaskSummary> _createSummaries() {
    return _tasks
        .map(
          (task) =>
          TaskSummary(
              id: task.id!,
              description: task.description,
              createDate: task.createDate
          ),
    ).toList();
  }

  Future<void> _createDefaultTask() async {
    if (_tasks.isEmpty) {
      _tasks.add(
        TaskSummary(
          id: _sequentialId++,
          description: 'My first task!',
          createDate: DateTime.now(), //  (2025, 1, 6),
        ),
      );

      _tasks.add(
        TaskSummary(
          id: _sequentialId++,
          description: 'My next task!',
          createDate: DateTime.now(), //  (2025, 1, 6),
        ),
      );
    }
  }

  @override
  Future<Result<void>> delete(int id) async {
    _tasks.removeWhere((task) => task.id == id);
    return const Result.ok(null);
  }
}