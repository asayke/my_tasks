import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task_data_usage/utils/colors/project_colors.dart';
import 'package:second_task_data_usage/utils/icons/project_icons.dart';
import 'package:second_task_data_usage/utils/text_styles/project_styles.dart';

class CupertinoLikeAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const CupertinoLikeAppbar({Key? key}) : super(key: key);

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
      backgroundColor: ProjectColors.appBarBackgroundColor,
      leading: const _AppbarPopLeading(),
      title: Text(
        "task",
        style: ProjectStyles.semiBoldBlack17OpenSans,
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
              ProjectIcons.backIcon,
              color: ProjectColors.activeColor,
            ),
          ),
          Text(
            "Close",
            style: ProjectStyles.semiBoldActive17OpenSans,
          ),
        ],
      ),
    );
  }
}
