import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../assets/strings/projects_strings.dart';
import '../../../../../assets/text_styles/project_styles.dart';
import 'package:second_task_data_usage/presentation/ui/widgets/rounded_btn_widget.dart';
import 'package:second_task_data_usage/presentation/ui/widgets/title_with_text_btn_widget.dart';

/// экран информационного рыбьего текста
class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20.0.w, right: 14.w, bottom: 41.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextTitleWithBtn(
                title: ProjectStrings.titleInfo,
                isBtn: false,
              ),
              SingleChildScrollView(
                child: Text(
                  ProjectStrings.fishLong,
                  style: ProjectStyles.semiBoldGrey15OpenSans,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              RoundedBtnWidget(
                bntText: ProjectStrings.btnInfo,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
