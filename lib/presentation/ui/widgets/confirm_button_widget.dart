import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/utils/colors/app_colors.dart';
import 'package:second_task_data_usage/utils/text_styles/app_text_styles.dart';

class ConfirnButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const ConfirnButtonWidget({
    required this.buttonText,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.btnColor),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(0),
        foregroundColor: MaterialStateProperty.all(AppColors.iconColor),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: 315.w,
        height: 46.h,
        child: Center(
          child: Text(
            buttonText,
            style: AppStyles.semiBoldBtn14OpenSans,
          ),
        ),
      ),
    );
  }
}
