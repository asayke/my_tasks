import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:second_task_data_usage/data/datasourses/firebase/interface_firebase_remote_data_sourse.dart';
import 'package:second_task_data_usage/domain/models/task.dart';

/// база данных firebase
class FirebaseRemoteDataSource extends IFirebaseRemoteDataSource {
  final firebaseTaskCollection =
      FirebaseFirestore.instance.collection('Ftasks').withConverter<Task>(
            fromFirestore: (snapshots, _) => Task.fromJson(snapshots.data()!),
            toFirestore: (task, _) => task.toJson(),
          );

  @override
  Future<void> changeCompletenessOfTask({required Task task}) async {
    final taskDoc = firebaseTaskCollection.doc(task.id);
    taskDoc.update({'isCompleted': task.isCompleted});
  }

  @override
  Future<List<Task>> getTasks({required bool isCompleted}) async {
    final taskSnapshot = await firebaseTaskCollection
        .orderBy('name')
        .where('isCompleted', isEqualTo: isCompleted)
        .get();
    return taskSnapshot.docs
        .map(
          (e) => e.data(),
        )
        .toList();
  }

  @override
  Future<void> saveTask({required Task task}) async {
    final taskDoc = firebaseTaskCollection.doc(task.id);
    taskDoc.set(task);
  }
}
