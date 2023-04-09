import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../assets/colors/project_colors.dart';
import '../../../../assets/text_styles/project_styles.dart';

/// виджет кнопки
class RoundedBtnWidget extends StatelessWidget {
  const RoundedBtnWidget({
    required this.bntText,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final String bntText;
  final VoidCallback onPressed;

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
