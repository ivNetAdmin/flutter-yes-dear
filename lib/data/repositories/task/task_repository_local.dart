import '../../../domain/models/task/task_summary.dart';
import '../../../utils/result.dart';
import 'task_repository.dart';

class TaskRepositoryLocal implements TaskRepository
{
  @override
  Future<Result<List<TaskSummary>>> getTaskSummaryList() {
    // TODO: implement getTaskSummaryList
    throw UnimplementedError();
  }

}