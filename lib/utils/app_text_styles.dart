import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_tasks/utils/app_colors.dart';

abstract class AppTextStyles {
  static const String fontFamilyOpenSans = "OpenSans";

  static final TextStyle titleTextStyle = TextStyle(
    fontSize: 34.sp,
    fontFamily: fontFamilyOpenSans,
    fontWeight: FontWeight.w700,
    color: Colors.black,
    height: 41.h / 34.sp,
    letterSpacing: 0.37.w,
  );

  static final TextStyle lightGreyTextStyle = TextStyle(
    fontSize: 15.sp,
    height: 20.h / 15.sp,
    fontFamily: fontFamilyOpenSans,
    color: AppColors.lightGrey,
    letterSpacing: -0.24.w,
    fontWeight: FontWeight.w600,
  );
}
