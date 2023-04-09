import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/utils/colors/app_colors.dart';
import 'package:second_task_data_usage/utils/dates_convertor.dart';
import 'package:second_task_data_usage/utils/text_styles/app_text_styles.dart';

class TimeInfoWidget extends StatelessWidget {
  const TimeInfoWidget({required this.time, Key? key}) : super(key: key);
  final TimeOfDay time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inputBackgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Text(
          DatesConvertor.convertTimeOfDay(time),
          style: AppStyles.regularBlack22OpenSans,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
