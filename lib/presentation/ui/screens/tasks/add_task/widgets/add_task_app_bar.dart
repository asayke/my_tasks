import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task_data_usage/utils/colors/app_colors.dart';
import 'package:second_task_data_usage/utils/icons/app_icons.dart';
import 'package:second_task_data_usage/utils/text_styles/app_text_styles.dart';

class AddTaskAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AddTaskAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      toolbarHeight: 58.h,
      leadingWidth: 150.w,
      backgroundColor: AppColors.appBarBackgroundColor,
      leading: const _AppbarPopLeading(),
      title: Text(
        "Task",
        style: AppStyles.semiBoldBlack17OpenSans,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppbarPopLeading extends StatelessWidget {
  const _AppbarPopLeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 9.w,
              right: 5.w,
            ),
            child: SvgPicture.asset(
              AppIcons.backIcon,
              color: AppColors.activeColor,
            ),
          ),
          Text(
            "Close",
            style: AppStyles.semiBoldActive17OpenSans,
          ),
        ],
      ),
    );
  }
}
