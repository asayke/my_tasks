import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_tasks/utils/app_icons.dart';
import 'package:my_tasks/widgets/add_new_task.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: SvgPicture.asset(AppIcons.infoIcon),
              onTap: () {},
            ),
            GestureDetector(
              child: SvgPicture.asset(AppIcons.addIcon),
              onTap: () {
                showBottomSheet(
                  context: context,
                  elevation: 0,
                  builder: (context) => const NewTaskPage(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
