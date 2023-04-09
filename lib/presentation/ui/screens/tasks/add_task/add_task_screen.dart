import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/presentation/bloc/tasks_list_bloc.dart';
import 'package:second_task_data_usage/domain/models/task.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/add_task/widgets/add_task_app_bar.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/add_task/widgets/date_input_widget.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/add_task/widgets/text_input_widget.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/add_task/widgets/time_input_widget.dart';
import 'package:second_task_data_usage/presentation/ui/widgets/confirm_button_widget.dart';
import 'package:second_task_data_usage/presentation/ui/widgets/title_with_text_btn_widget.dart';
import 'package:uuid/uuid.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  TimeOfDay _currentTime = TimeOfDay.now();
  DateTime _currentDate = DateTime.now();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AddTaskAppbar(),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0.w, right: 14.w, top: 0.h),
        child: Column(
          children: [
            const TextTitleWithBtn(
              title: "Add a task",
              isBtn: false,
            ),
            Form(
              key: _formKey,
              child: TextInputRawWidget(
                textEditingController: _textEditingController,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TimeInputRawWidget(
              currentTime: _currentTime,
              onTap: _changeTimeByDialog,
            ),
            SizedBox(
              height: 28.h,
            ),
            DateInputRawWidget(
              currentDate: _currentDate,
              onTap: _changeDateByDialog,
            ),
            SizedBox(
              height: 57.h,
            ),
            ConfirnButtonWidget(
              buttonText: "Done",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.read<TasksListBloc>().add(
                        TasksListEvent.addTask(
                          task: Task(
                            id: const Uuid().v1(),
                            name: _textEditingController.text,
                            date: _currentDate.copyWith(
                              hour: _currentTime.hour,
                              minute: _currentTime.minute,
                            ),
                          ),
                        ),
                      );
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _changeTimeByDialog() async {
    _currentTime = (await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        )) ??
        _currentTime;
    setState(() {});
  }

  void _changeDateByDialog() async {
    _currentDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2050),
        ) ??
        _currentDate;
    setState(() {});
  }
}
