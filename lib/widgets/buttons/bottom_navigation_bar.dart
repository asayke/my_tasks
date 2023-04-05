import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_tasks/utils/app_colors.dart';
import 'package:my_tasks/utils/app_icons.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: 747.w,
      color: AppColors.barsBackgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 45.w),
      child: Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppIcons.alphabeticalSortingIcon),
            SvgPicture.asset(AppIcons.alphabeticalSortingTwoIcon),
            SvgPicture.asset(AppIcons.arrowsAscendingDownSortSortingIcon),
          ],
        ),
      ),
    );
  }
}
