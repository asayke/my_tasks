// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Task task) changedReadiness,
    required TResult Function(Task task) addTask,
    required TResult Function() filtered,
    required TResult Function(SortTypes sortType) sorted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Task task)? changedReadiness,
    TResult? Function(Task task)? addTask,
    TResult? Function()? filtered,
    TResult? Function(SortTypes sortType)? sorted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Task task)? changedReadiness,
    TResult Function(Task task)? addTask,
    TResult Function()? filtered,
    TResult Function(SortTypes sortType)? sorted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangedReadiness value) changedReadiness,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangedReadiness value)? changedReadiness,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangedReadiness value)? changedReadiness,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksListEventCopyWith<$Res> {
  factory $TasksListEventCopyWith(
          TasksListEvent value, $Res Function(TasksListEvent) then) =
      _$TasksListEventCopyWithImpl<$Res, TasksListEvent>;
}

/// @nodoc
class _$TasksListEventCopyWithImpl<$Res, $Val extends TasksListEvent>
    implements $TasksListEventCopyWith<$Res> {
  _$TasksListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TasksListEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TasksListEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Task task) changedReadiness,
    required TResult Function(Task task) addTask,
    required TResult Function() filtered,
    required TResult Function(SortTypes sortType) sorted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Task task)? changedReadiness,
    TResult? Function(Task task)? addTask,
    TResult? Function()? filtered,
    TResult? Function(SortTypes sortType)? sorted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Task task)? changedReadiness,
    TResult Function(Task task)? addTask,
    TResult Function()? filtered,
    TResult Function(SortTypes sortType)? sorted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangedReadiness value) changedReadiness,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangedReadiness value)? changedReadiness,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangedReadiness value)? changedReadiness,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TasksListEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangedReadinessCopyWith<$Res> {
  factory _$$_ChangedReadinessCopyWith(
          _$_ChangedReadiness value, $Res Function(_$_ChangedReadiness) then) =
      __$$_ChangedReadinessCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$_ChangedReadinessCopyWithImpl<$Res>
    extends _$TasksListEventCopyWithImpl<$Res, _$_ChangedReadiness>
    implements _$$_ChangedReadinessCopyWith<$Res> {
  __$$_ChangedReadinessCopyWithImpl(
      _$_ChangedReadiness _value, $Res Function(_$_ChangedReadiness) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_ChangedReadiness(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_ChangedReadiness implements _ChangedReadiness {
  const _$_ChangedReadiness({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksListEvent.changedReadiness(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangedReadiness &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangedReadinessCopyWith<_$_ChangedReadiness> get copyWith =>
      __$$_ChangedReadinessCopyWithImpl<_$_ChangedReadiness>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Task task) changedReadiness,
    required TResult Function(Task task) addTask,
    required TResult Function() filtered,
    required TResult Function(SortTypes sortType) sorted,
  }) {
    return changedReadiness(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Task task)? changedReadiness,
    TResult? Function(Task task)? addTask,
    TResult? Function()? filtered,
    TResult? Function(SortTypes sortType)? sorted,
  }) {
    return changedReadiness?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Task task)? changedReadiness,
    TResult Function(Task task)? addTask,
    TResult Function()? filtered,
    TResult Function(SortTypes sortType)? sorted,
    required TResult orElse(),
  }) {
    if (changedReadiness != null) {
      return changedReadiness(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangedReadiness value) changedReadiness,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
  }) {
    return changedReadiness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangedReadiness value)? changedReadiness,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return changedReadiness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangedReadiness value)? changedReadiness,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (changedReadiness != null) {
      return changedReadiness(this);
    }
    return orElse();
  }
}

abstract class _ChangedReadiness implements TasksListEvent {
  const factory _ChangedReadiness({required final Task task}) =
      _$_ChangedReadiness;

  Task get task;
  @JsonKey(ignore: true)
  _$$_ChangedReadinessCopyWith<_$_ChangedReadiness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTaskCopyWith<$Res> {
  factory _$$_AddTaskCopyWith(
          _$_AddTask value, $Res Function(_$_AddTask) then) =
      __$$_AddTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$_AddTaskCopyWithImpl<$Res>
    extends _$TasksListEventCopyWithImpl<$Res, _$_AddTask>
    implements _$$_AddTaskCopyWith<$Res> {
  __$$_AddTaskCopyWithImpl(_$_AddTask _value, $Res Function(_$_AddTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_AddTask(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$_AddTask implements _AddTask {
  const _$_AddTask({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksListEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTaskCopyWith<_$_AddTask> get copyWith =>
      __$$_AddTaskCopyWithImpl<_$_AddTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Task task) changedReadiness,
    required TResult Function(Task task) addTask,
    required TResult Function() filtered,
    required TResult Function(SortTypes sortType) sorted,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Task task)? changedReadiness,
    TResult? Function(Task task)? addTask,
    TResult? Function()? filtered,
    TResult? Function(SortTypes sortType)? sorted,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Task task)? changedReadiness,
    TResult Function(Task task)? addTask,
    TResult Function()? filtered,
    TResult Function(SortTypes sortType)? sorted,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangedReadiness value) changedReadiness,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangedReadiness value)? changedReadiness,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangedReadiness value)? changedReadiness,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements TasksListEvent {
  const factory _AddTask({required final Task task}) = _$_AddTask;

  Task get task;
  @JsonKey(ignore: true)
  _$$_AddTaskCopyWith<_$_AddTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilteredCopyWith<$Res> {
  factory _$$_FilteredCopyWith(
          _$_Filtered value, $Res Function(_$_Filtered) then) =
      __$$_FilteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FilteredCopyWithImpl<$Res>
    extends _$TasksListEventCopyWithImpl<$Res, _$_Filtered>
    implements _$$_FilteredCopyWith<$Res> {
  __$$_FilteredCopyWithImpl(
      _$_Filtered _value, $Res Function(_$_Filtered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Filtered implements _Filtered {
  const _$_Filtered();

  @override
  String toString() {
    return 'TasksListEvent.filtered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Filtered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Task task) changedReadiness,
    required TResult Function(Task task) addTask,
    required TResult Function() filtered,
    required TResult Function(SortTypes sortType) sorted,
  }) {
    return filtered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Task task)? changedReadiness,
    TResult? Function(Task task)? addTask,
    TResult? Function()? filtered,
    TResult? Function(SortTypes sortType)? sorted,
  }) {
    return filtered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Task task)? changedReadiness,
    TResult Function(Task task)? addTask,
    TResult Function()? filtered,
    TResult Function(SortTypes sortType)? sorted,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangedReadiness value) changedReadiness,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangedReadiness value)? changedReadiness,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangedReadiness value)? changedReadiness,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _Filtered implements TasksListEvent {
  const factory _Filtered() = _$_Filtered;
}

/// @nodoc
abstract class _$$_SortedCopyWith<$Res> {
  factory _$$_SortedCopyWith(_$_Sorted value, $Res Function(_$_Sorted) then) =
      __$$_SortedCopyWithImpl<$Res>;
  @useResult
  $Res call({SortTypes sortType});
}

/// @nodoc
class __$$_SortedCopyWithImpl<$Res>
    extends _$TasksListEventCopyWithImpl<$Res, _$_Sorted>
    implements _$$_SortedCopyWith<$Res> {
  __$$_SortedCopyWithImpl(_$_Sorted _value, $Res Function(_$_Sorted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$_Sorted(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortTypes,
    ));
  }
}

/// @nodoc

class _$_Sorted implements _Sorted {
  const _$_Sorted({required this.sortType});

  @override
  final SortTypes sortType;

  @override
  String toString() {
    return 'TasksListEvent.sorted(sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sorted &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortedCopyWith<_$_Sorted> get copyWith =>
      __$$_SortedCopyWithImpl<_$_Sorted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Task task) changedReadiness,
    required TResult Function(Task task) addTask,
    required TResult Function() filtered,
    required TResult Function(SortTypes sortType) sorted,
  }) {
    return sorted(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Task task)? changedReadiness,
    TResult? Function(Task task)? addTask,
    TResult? Function()? filtered,
    TResult? Function(SortTypes sortType)? sorted,
  }) {
    return sorted?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Task task)? changedReadiness,
    TResult Function(Task task)? addTask,
    TResult Function()? filtered,
    TResult Function(SortTypes sortType)? sorted,
    required TResult orElse(),
  }) {
    if (sorted != null) {
      return sorted(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangedReadiness value) changedReadiness,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Sorted value) sorted,
  }) {
    return sorted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangedReadiness value)? changedReadiness,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return sorted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangedReadiness value)? changedReadiness,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (sorted != null) {
      return sorted(this);
    }
    return orElse();
  }
}

abstract class _Sorted implements TasksListEvent {
  const factory _Sorted({required final SortTypes sortType}) = _$_Sorted;

  SortTypes get sortType;
  @JsonKey(ignore: true)
  _$$_SortedCopyWith<_$_Sorted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> tasks)? initial,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksListStateCopyWith<$Res> {
  factory $TasksListStateCopyWith(
          TasksListState value, $Res Function(TasksListState) then) =
      _$TasksListStateCopyWithImpl<$Res, TasksListState>;
}

/// @nodoc
class _$TasksListStateCopyWithImpl<$Res, $Val extends TasksListState>
    implements $TasksListStateCopyWith<$Res> {
  _$TasksListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$TasksListStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$Initial(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({required final List<Task> tasks}) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksListState.initial(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) initial,
    required TResult Function() loading,
  }) {
    return initial(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> tasks)? initial,
    TResult? Function()? loading,
  }) {
    return initial?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TasksListState {
  const factory Initial({required final List<Task> tasks}) = _$Initial;

  List<Task> get tasks;
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$TasksListStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'TasksListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Task> tasks) initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Task> tasks)? initial,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Task> tasks)? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TasksListState {
  const factory Loading() = _$Loading;
}
