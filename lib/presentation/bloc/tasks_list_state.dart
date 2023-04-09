part of 'tasks_list_bloc.dart';

@freezed
class TasksListState with _$TasksListState {
  const factory TasksListState.initial({
    required List<Task> tasks,
  }) = Initial;
  const factory TasksListState.loading() = Loading;
}
