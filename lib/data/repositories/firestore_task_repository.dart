import 'package:second_task_data_usage/data/datasourses/firebase/interface_firebase_remote_data_sourse.dart';
import 'package:second_task_data_usage/domain/repositories/i_task_repository.dart';
import 'package:second_task_data_usage/domain/models/task.dart';

class FirestoreTaskRepository extends ITaskRepository {
  final IFirebaseRemoteDataSource dataSource;

  FirestoreTaskRepository({required this.dataSource});

  @override
  Future<List<Task>> getCompletedTasks() async {
    return dataSource.getTasks(isCompleted: true);
  }

  @override
  Future<List<Task>> getUncompletedTasks() async {
    return dataSource.getTasks(isCompleted: false);

  }

  @override
  void saveTask(Task task) {
    dataSource.saveTask(task: task);
  }

  @override
  void changeCompletenessOfTask(Task task) {
    dataSource.changeCompletenessOfTask(task: task);
  }
}
