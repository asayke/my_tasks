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

  static final TextStyle blackButtonsTextStyle = TextStyle(
    fontFamily: fontFamilyOpenSans,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.34.w,
    fontSize: 14.06.sp,
    height: 18.2.h / 14.06.sp,
    color: Colors.white,
  );

  static final TextStyle microTitlesTextStyle = TextStyle(
    fontFamily: fontFamilyOpenSans,
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    height: 24.h / 20.sp,
    color: Colors.black,
    letterSpacing: 0.38.w,
  );

  static final TextStyle pickersTextStyle = TextStyle(
    fontFamily: fontFamilyOpenSans,
    fontSize: 22.sp,
    height: 28.h / 22.sp,
    letterSpacing: 0.35.w,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
}
