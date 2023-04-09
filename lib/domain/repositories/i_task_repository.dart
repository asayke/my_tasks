import 'package:second_task_data_usage/domain/models/task.dart';

abstract class ITaskRepository {
  void saveTask(Task task);

  void changeCompletenessOfTask(Task task);

  Future<List<Task>> getCompletedTasks();

  Future<List<Task>> getUncompletedTasks();
}
