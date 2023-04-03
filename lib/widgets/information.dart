import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tasks/utils/app_colors.dart';
import 'package:my_tasks/utils/app_text_styles.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.accessoryBackgroundColor,
      child: Column(
        children: [
          SizedBox(height: 60.h),
          Container(
            padding: EdgeInsets.only(left: 27.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Information",
                  style: AppTextStyles.titleTextStyle,
                ),
                SizedBox(height: 41.h),
                SizedBox(
                  height: 493.h,
                  width: 334.w,
                  child: Text(
                    "Praesent ultricies lacus in ligula volutpat feugiat. In hac habitasse platea dictumst. In hac habitasse platea dictumst. Fusce luctus justo eget nisi hendrerit, quis aliquam arcu porta. Cras ultricies, elit sit amet cursus consectetur, risus felis ullamcorper nulla, ut scelerisque sapien lorem non sem. Integer vestibulum ornare ligula, a placerat lectus volutpat ultrices. Aliquam commodo malesuada purus a mollis. Vestibulum pulvinar aliquam libero eu consequat.                                Cras massa orci, ultrices sed scelerisque id, semper vel neque. Proin a turpis quis nibh cursus hendrerit sit amet vel libero. Nullam sit amet laoreet ante. Mauris sit amet mi vitae arcu dignissim porttitor et in arcu. Nullam eleifend molestie arcu, pretium fermentum orci feugiat eget. Integer dapibus tincidunt ipsum, at rutrum magna rutrum at. Quisque pretium convallis vestibulum.",
                    style: AppTextStyles.lightGreyTextStyle,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 106.h),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 315.w,
              height: 46.h,
              decoration: const BoxDecoration(
                color: AppColors.blackButtonsBackgroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(11.5812),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "Done",
                style: AppTextStyles.blackButtonsTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
