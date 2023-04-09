import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:second_task_data_usage/domain/models/sort_types.dart';
import 'package:second_task_data_usage/domain/models/task.dart';
import 'package:second_task_data_usage/domain/repositories/i_task_repository.dart';

part 'tasks_list_event.dart';
part 'tasks_list_state.dart';
part 'tasks_list_bloc.freezed.dart';

class TasksListBloc extends Bloc<TasksListEvent, TasksListState> {
  final ITaskRepository repository;

  bool _isShowingCompleted = true;
  SortTypes _currentType = SortTypes.azSort;
  List<Task> _completedTasks = [];
  List<Task> _uncompletedTasks = [];
  TasksListBloc(this.repository)
      : super(
          const Initial(tasks: []),
        ) {
    on<_Started>(_onStarted);
    on<_ChangedReadiness>(_onChangedReadiness);
    on<_Sorted>(_onSorted);
    on<_Filtered>(_onFiltered);
    on<_AddTask>(_onAddTask);
  }

  _onAddTask(_AddTask event, emit) async {
    _uncompletedTasks.add(event.task);
    _sortListBySortType(_currentType, _uncompletedTasks);
    repository.saveTask(event.task);

    emit(
      Initial(
        tasks: _showFiltered(),
      ),
    );
  }

  _onStarted(_Started event, emit) async {
    emit(const Loading());
    _completedTasks = await repository.getCompletedTasks();
    _uncompletedTasks = await repository.getUncompletedTasks();
    _showTasks();
  }

  _onChangedReadiness(_ChangedReadiness event, emit) async {
    _changeCompleteness(event.task);
    repository.changeCompletenessOfTask(
      event.task.copyWith(isCompleted: !event.task.isCompleted),
    );
    _showTasks();
  }

  _onFiltered(_Filtered event, emit) async {
    _isShowingCompleted = !_isShowingCompleted;

    emit(
      Initial(
        tasks: _showFiltered(),
      ),
    );
  }

  _onSorted(_Sorted event, emit) async {
    _currentType = event.sortType;
    _sortListBySortType(_currentType, _completedTasks);
    _sortListBySortType(_currentType, _uncompletedTasks);
    _showTasks();
  }

  void _showTasks() {
    if (_completedTasks.isNotEmpty || _uncompletedTasks.isNotEmpty) {
      emit(
        Initial(
          tasks: _showFiltered(),
        ),
      );
    } else {
      emit(
        const Initial(tasks: []),
      );
    }
  }

  List<Task> _showFiltered() {
    if (_isShowingCompleted) {
      return _uncompletedTasks + _completedTasks;
    } else {
      return _uncompletedTasks;
    }
  }

  void _sortListBySortType(SortTypes type, List<Task> list) {
    switch (type) {
      case SortTypes.azSort:
        _sortByAlphabet(list);
        break;
      case SortTypes.zaSort:
        _sortByReversedAlphabet(list);
        break;
      case SortTypes.dateSort:
        _sortByDate(list);
        break;
    }
  }

  void _changeCompleteness(Task task) {
    if (task.isCompleted) {
      _uncompletedTasks.add(
        task.copyWith(
          isCompleted: false,
        ),
      );
      _sortListBySortType(_currentType, _uncompletedTasks);
      _deleteTaskFromList(task.id, _completedTasks);
    } else {
      _completedTasks.add(
        task.copyWith(
          isCompleted: true,
        ),
      );
      _sortListBySortType(_currentType, _completedTasks);
      _deleteTaskFromList(task.id, _uncompletedTasks);
    }
  }

  void _deleteTaskFromList(String id, List<Task> list) {
    list.removeWhere((element) => element.id == id);
  }

  void _sortByAlphabet(List<Task> tasks) {
    tasks.sort(
      (a, b) => a.name.compareTo(b.name),
    );
  }

  void _sortByReversedAlphabet(List<Task> tasks) {
    tasks.sort(
      (a, b) => b.name.compareTo(a.name),
    );
  }

  void _sortByDate(List<Task> tasks) {
    tasks.sort(
      (a, b) => a.date.compareTo(
        b.date,
      ),
    );
  }
}
