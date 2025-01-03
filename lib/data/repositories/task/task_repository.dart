import '../../../domain/models/task/task_summary.dart';
import '../../../utils/result.dart';

abstract class TaskRepository{
  Future<Result<List<TaskSummary>>> getTaskSummaryList();
}