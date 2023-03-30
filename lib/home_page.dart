import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_tasks/utils/app_colors.dart';
import 'package:my_tasks/utils/app_icons.dart';
import 'package:my_tasks/utils/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                left: 27.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 60.h,
                    ),
                    child: Text(
                      "My tasks",
                      style: AppTextStyles.titleTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 41.h,
                  ),
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
              color: Colors.white,
              padding: EdgeInsets.only(
                left: 22.04.w,
                right: 71.41.w,
              ),
              child: SvgPicture.asset(AppIcons.arrowIcon),
            ),
            SizedBox(height: 42.04.h),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AppIcons.infoIcon),
                    SvgPicture.asset(AppIcons.addIcon),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.selectedItemColor,
        unselectedItemColor: AppColors.unselectedItemColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: AppColors.dirtyWhite,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.alphabeticalSortingIcon,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.alphabeticalSortingTwoIcon,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.arrowsAscendingDownSortSortingIcon,
              ),
              label: "",
            ),
          ]),
    );
  }
}
