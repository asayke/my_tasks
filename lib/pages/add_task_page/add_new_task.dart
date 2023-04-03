import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tasks/pages/add_task_page/widgets/add_task_appbar.dart';
import 'package:my_tasks/utils/app_colors.dart';
import 'package:my_tasks/utils/app_text_styles.dart';

class NewTaskPage extends StatefulWidget {
  const NewTaskPage({super.key});

  @override
  State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(59.h), child: const AddTaskAppBar()),
      body: Container(
        padding: EdgeInsets.only(left: 29.w, top: 37.h),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add a task",
              style: AppTextStyles.titleTextStyle,
            ),
            SizedBox(
              height: 43.h,
            ),
            Row(
              children: [
                Text(
                  "Name",
                  style: AppTextStyles.microTitlesTextStyle,
                ),
                SizedBox(
                  width: 19.w,
                ),
                Container(
                  width: 241.w,
                  height: 27.h,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.lightGrey,
                        width: 0.38.w,
                      ),
                    ),
                  ),
                  child: TextField(
                    controller: TextEditingController(
                      text: "Lorem ipsum dolor sit amet",
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                Text(
                  "Time",
                  style: AppTextStyles.microTitlesTextStyle,
                ),
                SizedBox(width: 22.w),
                Container(
                  width: 86.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    color: AppColors.pickersBackgroundColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                Text(
                  "Date",
                  style: AppTextStyles.microTitlesTextStyle,
                ),
                SizedBox(width: 24.w),
                Container(
                  width: 163.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    color: AppColors.pickersBackgroundColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 63.h,
            ),
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
      ),
    );
  }
}