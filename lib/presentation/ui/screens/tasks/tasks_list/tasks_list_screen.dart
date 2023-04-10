import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task_data_usage/presentation/bloc/tasks_list_bloc.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/tasks_list/widgets/loading_widget.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/tasks_list/widgets/no_tasks_widget.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/tasks_list/widgets/tasks_floatings_button.dart';
import 'package:second_task_data_usage/utils/colors/app_colors.dart';
import 'package:second_task_data_usage/utils/icons/app_icons.dart';
import 'package:second_task_data_usage/domain/models/sort_types.dart';
import 'package:second_task_data_usage/domain/models/task.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/tasks_list/widgets/check_box_widget.dart';
import 'package:second_task_data_usage/presentation/ui/widgets/title_with_text_btn_widget.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenBackgroundColor,
        bottomNavigationBar: const _TasksBottomNavigationBar(),
        body: Padding(
          padding: EdgeInsets.only(left: 20.0.w, right: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<TasksListBloc, TasksListState>(
                builder: (context, state) {
                  return TextTitleWithButton(
                    title: "My tasks",
                    isBtn: state is Initial,
                    onPressed: () {
                      context
                          .read<TasksListBloc>()
                          .add(const TasksListEvent.filtered());
                    },
                  );
                },
              ),
              BlocBuilder<TasksListBloc, TasksListState>(
                builder: (context, state) {
                  if (state is Initial) {
                    if (state.tasks.isNotEmpty) {
                      return _TasksListOfTasksWidget(
                        tasks: state.tasks,
                      );
                    } else {
                      return const TasksNoTasksWidget();
                    }
                  } else {
                    return const LoadingWidget();
                  }
                },
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const TasksFloatingButtons(),
      ),
    );
  }
}

class _TasksBottomNavigationBar extends StatefulWidget {
  const _TasksBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<_TasksBottomNavigationBar> createState() =>
      _TasksBottomNavigationBarState();
}

class _TasksBottomNavigationBarState extends State<_TasksBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.barUpIcon,
            height: 40.h,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.barDownIcon,
            height: 40.h,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.barDateIcon,
            height: 40.h,
          ),
          label: '',
        ),
      ],
      selectedItemColor: AppColors.activeColor,
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
        context.read<TasksListBloc>().add(
              TasksListEvent.sorted(
                sortType: SortTypes.values[index],
              ),
            );
      },
    );
  }
}

class _TasksListOfTasksWidget extends StatelessWidget {
  const _TasksListOfTasksWidget({required this.tasks, Key? key})
      : super(key: key);

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return CheckBoxWidget(
            title: tasks[index].name,
            date: tasks[index].date,
            value: tasks[index].isCompleted,
            onChanged: (bool? value) {
              context.read<TasksListBloc>().add(
                    TasksListEvent.changedReadiness(
                      task: tasks[index],
                    ),
                  );
            },
          );
        },
      ),
    );
  }
}
