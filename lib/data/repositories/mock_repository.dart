import 'package:second_task_data_usage/domain/repositories/i_task_repository.dart';
import 'package:second_task_data_usage/domain/models/task.dart';

class MockRepository extends ITaskRepository {
  @override
  Future<List<Task>> getCompletedTasks() async {
    return [
      Task(
        id: '1',
        name: 'name',
        date: DateTime(12),
      ),
      Task(id: '2', name: 'name', date: DateTime(12)),
      Task(id: '3', name: 'name', date: DateTime(12), isCompleted: true),
      Task(id: '4', name: 'name', date: DateTime(12), isCompleted: true),
    ];
  }

  @override
  Future<List<Task>> getUncompletedTasks() async {
    return [
      Task(
        id: '1',
        name: 'name',
        date: DateTime(12),
      ),
      Task(id: '2', name: 'name', date: DateTime(12)),
      Task(id: '3', name: 'name', date: DateTime(12), isCompleted: true),
      Task(id: '4', name: 'name', date: DateTime(12), isCompleted: true),
    ];
  }

  @override
  void saveTask(Task task) {}

  @override
  void changeCompletenessOfTask(Task task) {}
}
