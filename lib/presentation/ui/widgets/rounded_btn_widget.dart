import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/utils/colors/project_colors.dart';
import 'package:second_task_data_usage/utils/text_styles/project_styles.dart';

class RoundedBtnWidget extends StatelessWidget {
  final String bntText;
  final VoidCallback onPressed;
  
  const RoundedBtnWidget({
    required this.bntText,
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
        backgroundColor: MaterialStateProperty.all(ProjectColors.btnColor),
        shadowColor: MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(0),
        foregroundColor: MaterialStateProperty.all(ProjectColors.iconColor),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: 315.w,
        height: 46.h,
        child: Center(
          child: Text(
            bntText,
            style: ProjectStyles.semiBoldBtn14OpenSans,
          ),
        ),
      ),
    );
  }
}
