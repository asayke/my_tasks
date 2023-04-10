import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/utils/icons/app_icons.dart';
import 'package:second_task_data_usage/utils/text_styles/app_text_styles.dart';

class TasksNoTasksWidget extends StatelessWidget {
  const TasksNoTasksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 115.h,
          width: 156.w,
          child: Text(
            "Looks like there is no tasks yet! Go ahead and push a plus button below",
            style: AppStyles.semiBoldGrey15OpenSans,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 52.w,
            top: 18.h,
          ),
          child: Image.asset(AppIcons.arrowIcon),
        ),
      ],
    );
  }
}
