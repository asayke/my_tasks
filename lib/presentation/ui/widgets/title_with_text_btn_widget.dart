import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/utils/text_styles/app_text_styles.dart';

class TextTitleWithButton extends StatelessWidget {
  final String title;
  final bool isBtn;
  final bool value;
  final VoidCallback? onPressed;

  const TextTitleWithButton({
    required this.title,
    required this.isBtn,
    this.value = false,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 22.9.h, bottom: 26.h),
      child: Row(
        children: [
          Text(
            title,
            style: AppStyles.boldBlack34OpenSans,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Container(),
          ),
          if (isBtn) ...[
            Center(
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  value ? "Show completed" : "Hide completed",
                  style: AppStyles.semiBoldActive13OpenSans,
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
