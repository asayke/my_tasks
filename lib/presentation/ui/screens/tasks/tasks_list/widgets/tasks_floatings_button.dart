import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/add_task/add_task_screen.dart';
import 'package:second_task_data_usage/utils/colors/app_colors.dart';
import 'package:second_task_data_usage/utils/icons/app_icons.dart';

class TasksFloatingButtons extends StatelessWidget {
  const TasksFloatingButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "h1",
            onPressed: () {
              Navigator.pushNamed(context, '/infoScreen');
            },
            backgroundColor: AppColors.btnColor,
            child: SvgPicture.asset(
              AppIcons.infoIcon,
              height: 32.h,
            ),
          ),
          Expanded(child: Container()),
          FloatingActionButton(
            heroTag: "h2",
            onPressed: () {
              showModalBottomSheet<void>(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0.r),
                ),
                context: context,
                builder: (BuildContext context) {
                  return ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0.r),
                      topRight: Radius.circular(25.0.r),
                    ),
                    child: Container(
                      height: 700.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const AddTaskScreen(),
                    ),
                  );
                },
              );
            },
            backgroundColor: AppColors.btnColor,
            child: SvgPicture.asset(
              AppIcons.addIcon,
              height: 32.h,
            ),
          ),
        ],
      ),
    );
  }
}
