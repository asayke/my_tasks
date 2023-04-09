import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/add_task/widgets/date_info_widget.dart';
import 'package:second_task_data_usage/utils/text_styles/app_text_styles.dart';

class DateInputRawWidget extends StatelessWidget {
  final DateTime currentDate;
  final VoidCallback onTap;
  
  const DateInputRawWidget({
    required this.currentDate,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Date",
          style: AppStyles.semiBoldBlack20OpenSans,
        ),
        SizedBox(
          width: 24.w,
        ),
        InkWell(
          onTap: onTap,
          child: DateInfoWidget(
            date: currentDate,
          ),
        ),
      ],
    );
  }
}
