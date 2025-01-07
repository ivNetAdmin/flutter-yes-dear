import 'package:yes_dear/domain/models/task/task.dart';

import 'package:yes_dear/utils/result.dart';

import 'data_service.dart';

class DataServiceApi implements DataService {
  @override
  Future<Result<List<Task>>> getTaskList() async {
    // TODO: implement getTaskList
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteTask(int id) async {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

}