import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_tasks/utils/app_colors.dart';
import 'package:my_tasks/utils/app_icons.dart';

class AddTaskAppBar extends StatelessWidget {
  const AddTaskAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.barsBackgroundColor,
        elevation: 0,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        ),
        title: Text(
          "Task",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        leadingWidth: 77.w,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              SizedBox(
                width: 9.w,
              ),
              SvgPicture.asset(AppIcons.chevronLeftIcon),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Close",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      );
  }
}