import 'package:drift/drift.dart';
import 'package:second_task_data_usage/data/datasourses/drift/my_database/database.dart';
import 'package:second_task_data_usage/domain/repositories/i_task_repository.dart';
import 'package:second_task_data_usage/domain/models/task.dart';

class DriftTaskRepository extends ITaskRepository {
  final database = MyDatabase();

  @override
  Future<List<Task>> getCompletedTasks() async {
    List<DbTaskData> dbTasks = await database.getOrderedSortedDbTaskData(true);
    Iterable<Task> tasks = dbTasks.map(
      (e) => Task(
        id: e.id,
        name: e.title,
        date: e.date,
        isCompleted: e.isCompleted,
      ),
    );
    return tasks.toList();
  }

  @override
  Future<List<Task>> getUncompletedTasks() async {
    List<DbTaskData> dbTasks = await database.getOrderedSortedDbTaskData(false);

    Iterable<Task> tasks = dbTasks.map(
      (e) => Task(
        id: e.id,
        name: e.title,
        date: e.date,
        isCompleted: e.isCompleted,
      ),
    );
    return tasks.toList();
  }

  @override
  void saveTask(Task task) async {
    await database.addDbTask(
      DbTaskCompanion(
        id: Value<String>(task.id),
        title: Value<String>(task.name),
        date: Value<DateTime>(task.date),
        isCompleted: Value<bool>(task.isCompleted),
      ),
    );
  }

  @override
  void changeCompletenessOfTask(Task task) {
    database.editDbTask(
      task.id,
      DbTaskCompanion(
        isCompleted: Value<bool>(task.isCompleted),
      ),
    );
  }
}
