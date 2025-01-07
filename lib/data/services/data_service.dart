import '../../domain/models/task/task.dart';
import '../../utils/result.dart';

abstract class DataService {
  Future<Result<List<Task>>> getTaskList();

  Future<Result<void>> deleteTask(int id);
}