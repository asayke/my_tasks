import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class DbTask extends Table {
  TextColumn get id => text()();

  TextColumn get title => text()();

  DateTimeColumn get date => dateTime()();

  BoolColumn get isCompleted => boolean()();
}

/// локальная база данных с таблицей задач
@DriftDatabase(tables: [DbTask])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  Future<List<DbTaskData>> getOrderedSortedDbTaskData(bool isCompleted) {
    return (select(dbTask)
          ..where((a) => a.isCompleted.equals(isCompleted))
          ..orderBy([(t) => OrderingTerm(expression: t.title)]))
        .get();
  }

  Future editDbTask(String taskId, DbTaskCompanion taskCompanion) {
    return (update(dbTask)..where((t) => t.id.equals(taskId))).write(
      taskCompanion,
    );
  }

  Future deleteDbTask(String taskId) {
    return (delete(dbTask)..where((t) => t.id.equals(taskId))).go();
  }

  Future<int> addDbTask(DbTaskCompanion entry) {
    return into(dbTask).insert(entry);
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(
      p.join(dbFolder.path, 'db.sqlite'),
    );
    return NativeDatabase.createInBackground(file);
  });
}
