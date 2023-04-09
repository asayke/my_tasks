part of 'tasks_list_bloc.dart';

@freezed
class TasksListEvent with _$TasksListEvent {
  const factory TasksListEvent.started() = _Started;
  const factory TasksListEvent.changedReadiness({
    required Task task,
  }) = _ChangedReadiness;
  const factory TasksListEvent.addTask({
    required Task task,
  }) = _AddTask;
  const factory TasksListEvent.filtered() = _Filtered;
  const factory TasksListEvent.sorted({
    required SortTypes sortType,
  }) = _Sorted;
}
