import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/add_task/widgets/time_info_widget.dart';
import 'package:second_task_data_usage/utils/text_styles/app_text_styles.dart';

class TimeInputRawWidget extends StatelessWidget {
  final TimeOfDay currentTime;
  final VoidCallback onTap;
  
  const TimeInputRawWidget({
    required this.currentTime,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Time",
          style: AppStyles.semiBoldBlack20OpenSans,
        ),
        SizedBox(
          width: 22.w,
        ),
        InkWell(
          onTap: onTap,
          child: TimeInfoWidget(
            time: currentTime,
          ),
        ),
      ],
    );
  }
}