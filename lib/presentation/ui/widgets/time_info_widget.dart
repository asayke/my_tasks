import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../assets/colors/project_colors.dart';
import '../../../../assets/text_styles/project_styles.dart';
import 'package:second_task_data_usage/utils/dates_convertor.dart';

/// виджет показа времени
class TimeInfoWidget extends StatelessWidget {
  const TimeInfoWidget({required this.time, Key? key}) : super(key: key);
  final TimeOfDay time;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ProjectColors.inputBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Text(
          DatesConvertor.convertTimeOfDay(time),
          style: ProjectStyles.regularBlack22OpenSans,
        ),
      ),
    );
  }
}
