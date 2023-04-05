import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tasks/utils/app_colors.dart';
import 'package:my_tasks/utils/app_text_styles.dart';

class DatePicker extends StatefulWidget {
  final DateTime date;

  const DatePicker({super.key, required this.date});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? dateTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Date",
          style: AppTextStyles.microTitlesTextStyle,
        ),
        SizedBox(width: 24.w),
        GestureDetector(
          child: Container(
            width: 163.w,
            height: 36.h,
            decoration: BoxDecoration(
              color: AppColors.pickersBackgroundColor,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onTap: () async {
            DateTime? _dateTime = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2099),
            );
            if (dateTime == null) return;
            setState(() => dateTime = _dateTime);
          },
        ),
      ],
    );
  }
}
