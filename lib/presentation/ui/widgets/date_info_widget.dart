import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/utils/colors/project_colors.dart';
import 'package:second_task_data_usage/utils/text_styles/project_styles.dart';
import 'package:second_task_data_usage/utils/dates_convertor.dart';

class DateInfoWidget extends StatelessWidget {
  final DateTime date;

  const DateInfoWidget({required this.date, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ProjectColors.inputBackgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Text(
          DatesConvertor.convertDateTimeToDayYear(date),
          style: ProjectStyles.regularBlack22OpenSans,
        ),
      ),
    );
  }
}
