import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/utils/colors/app_colors.dart';
import 'package:second_task_data_usage/utils/dates_convertor.dart';
import 'package:second_task_data_usage/utils/text_styles/app_text_styles.dart';

class CheckBoxWidget extends StatelessWidget {
  final String title;
  final DateTime date;
  final bool value;
  final void Function(bool? value) onChanged;

  const CheckBoxWidget({
    required this.title,
    required this.date,
    required this.value,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      checkColor: AppColors.iconColor,
      activeColor: AppColors.btnColor,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6.r),
        ),
        side: BorderSide(color: AppColors.borderColor, width: 2.r),
      ),
      title: Opacity(
        opacity: value ? 0.3 : 1,
        child: Text(
          title,
          style: value
              ? AppStyles.semiBoldGrey15OpenSans
                  .copyWith(decoration: TextDecoration.lineThrough)
              : AppStyles.semiBoldGrey15OpenSans,
        ),
      ),
      subtitle: Opacity(
        opacity: value ? 0.3 : 1,
        child: Text(
          DatesConvertor.convertDateToMinuteYear(date),
          style: value
              ? AppStyles.italicActive13OpenSans
                  .copyWith(decoration: TextDecoration.lineThrough)
              : AppStyles.italicActive13OpenSans,
        ),
      ),
      value: value,
      onChanged: onChanged,
    );
  }
}
