import '../../../domain/models/task/task.dart';
import '../../../utils/result.dart';
import '../../services/data_service_local.dart';
import 'task_repository.dart';

class TaskRepositoryLocal implements TaskRepository {

  TaskRepositoryLocal({
  required DataServiceLocal dataServiceLocal,
  }) : _dataServiceLocal = dataServiceLocal;

  final DataServiceLocal _dataServiceLocal;

  @override
  Future<Result<List<Task>>> getTaskList() async {
    return _dataServiceLocal.getTaskList();
  }

  @override
  Future<Result<void>> deleteTask(int id) async {
    return _dataServiceLocal.deleteTask(id);
  }
}