import '../../../domain/models/task/task.dart';
import '../../../utils/result.dart';

abstract class TaskRepository{
  Future<Result<List<Task>>> getTaskList();

  Future<Result<void>> deleteTask(int id);
}