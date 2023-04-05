import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tasks/utils/app_colors.dart';
import 'package:my_tasks/utils/app_text_styles.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({super.key, required this.time});

  final TimeOfDay time;

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  TimeOfDay? newTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Time",
              style: AppTextStyles.microTitlesTextStyle,
            ),
            SizedBox(width: 22.w),
            GestureDetector(
              child: Container(
                width: 86.w,
                height: 36.h,
                decoration: BoxDecoration(
                  color: AppColors.pickersBackgroundColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                alignment: Alignment.center,
                child: Text(
                  "${widget.time.hour} : ${widget.time.minute}",
                  style: AppTextStyles.pickersTextStyle,
                ),
              ),
              onTap: () async {
                TimeOfDay? _newTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(
                      DateTime.now().add(const Duration(hours: 3))),
                );
                if (newTime == null) return;
                setState(() => newTime = _newTime);
              },
            ),
          ],
        ),
      ],
    );
  }
}
