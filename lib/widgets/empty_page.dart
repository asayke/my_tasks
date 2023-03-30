import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_tasks/utils/app_icons.dart';
import 'package:my_tasks/utils/app_text_styles.dart';
import 'package:my_tasks/widgets/floating_buttons.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 27.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: Text(
                  "My tasks",
                  style: AppTextStyles.titleTextStyle,
                ),
              ),
              SizedBox(height: 41.h),
              Container(
                padding: EdgeInsets.only(
                  right: 195.w,
                ),
                height: 115.h,
                child: Text(
                  "Looks like there is no tasks yet! Go ahead and push a plus   button below",
                  style: AppTextStyles.lightGreyTextStyle,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 22.04.w,
            right: 71.41.w,
          ),
          child: SvgPicture.asset(AppIcons.arrowIcon),
        ),
        SizedBox(height: 31.74.h),
        const FloatingButtons(),
      ],
    );
  }
}
