import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/app_colors.dart';

abstract class AppStyles {
  static const String fontFamilyOpenSans = "OpenSans";
 
  static TextStyle boldBlack34OpenSans = TextStyle(
    fontSize: 34.sp,
    height: 41.h / 34.sp,
    letterSpacing: 0.37.w,
    fontFamily: fontFamilyOpenSans,
    fontWeight: FontWeight.w700,
    color: AppColors.textColorPrimary,
  );

  static TextStyle regularBlack22OpenSans = TextStyle(
    fontSize: 22.sp,
    fontFamily: fontFamilyOpenSans,
    color: AppColors.textColorPrimary,
    height: 28.h / 22.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.35.w,    
  );

  static TextStyle semiBoldBlack20OpenSans = TextStyle(
    fontSize: 20.sp,
    fontFamily: fontFamilyOpenSans,
    color: AppColors.textColorPrimary,
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBoldBlack17OpenSans = TextStyle(
    fontSize: 17.sp,
    fontFamily: fontFamilyOpenSans,
    color: AppColors.textColorPrimary,
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBoldGrey15OpenSans = TextStyle(
    fontSize: 15.sp,
    fontFamily: fontFamilyOpenSans,
    color: AppColors.textColorSecondary,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.24.w,
    height: 20.h / 15.sp,
  );

  static TextStyle semiBoldActive13OpenSans = TextStyle(
    fontSize: 13.sp,
    fontFamily: fontFamilyOpenSans,
    color: AppColors.activeColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBoldActive17OpenSans = TextStyle(
    fontSize: 17.sp,
    fontFamily: fontFamilyOpenSans,
    color: AppColors.activeColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBoldBtn14OpenSans = TextStyle(
    fontSize: 14.sp,
    fontFamily: fontFamilyOpenSans,
    color: AppColors.iconColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle italicActive13OpenSans = TextStyle(
    fontSize: 13.sp,
    fontFamily: fontFamilyOpenSans,
    fontStyle: FontStyle.italic,
    color: AppColors.textColorSecondarySubTitle,
  );
}
