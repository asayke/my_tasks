import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_tasks/utils/app_colors.dart';
import 'package:my_tasks/utils/app_icons.dart';
import 'package:my_tasks/widgets/empty_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const EmptyPage(),
      bottomNavigationBar: SizedBox(
        height: 52.h,
        child: BottomNavigationBar(
          selectedItemColor: AppColors.selectedItemColor,
          unselectedItemColor: AppColors.unselectedItemColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: AppColors.dirtyWhite,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.alphabeticalSortingIcon,
                width: 20.8.w,
                height: 20.8.h,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.alphabeticalSortingTwoIcon,
                width: 20.8.w,
                height: 20.8.h,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.arrowsAscendingDownSortSortingIcon,
                width: 20.8.w,
                height: 20.8.h,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
