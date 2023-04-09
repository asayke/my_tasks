import 'package:second_task_data_usage/domain/models/task.dart';

abstract class IFirebaseRemoteDataSource{
  Future<List<Task>> getTasks({required bool isCompleted});

  Future<void> saveTask({required Task task});

  Future<void> changeCompletenessOfTask({required Task task});
}