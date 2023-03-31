import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_tasks/utils/app_colors.dart';
import 'package:my_tasks/utils/app_icons.dart';
import 'package:my_tasks/utils/app_text_styles.dart';

class NewTaskPage extends StatefulWidget {
  const NewTaskPage({super.key});

  @override
  State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  late DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundColor,
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
      ),
      body: Container(
        padding: EdgeInsets.only(left: 29.w, top: 37.h),
        height: 714.09.h,
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
