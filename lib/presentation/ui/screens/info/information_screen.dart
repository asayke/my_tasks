import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/presentation/ui/widgets/rounded_btn_widget.dart';
import 'package:second_task_data_usage/presentation/ui/widgets/title_with_text_btn_widget.dart';
import 'package:second_task_data_usage/utils/text_styles/project_styles.dart';

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
                title: "Information",
                isBtn: false,
              ),
              SingleChildScrollView(
                child: Text(
                  "Praesent ultricies lacus in ligula volutpat feugiat. In hac habitasse platea dictumst. In hac habitasse platea dictumst. Fusce luctus justo eget nisi hendrerit, quis aliquam arcu porta. Cras ultricies, elit sit amet cursus consectetur, risus felis ullamcorper nulla, ut scelerisque sapien lorem non sem. Integer vestibulum ornare ligula, a placerat lectus volutpat ultrices. Aliquam commodo malesuada purus a mollis. Vestibulum pulvinar aliquam libero eu consequat.Cras massa orci, ultrices sed scelerisque id, semper vel neque. Proin a turpis quis nibh cursus hendrerit sit amet vel libero. Nullam sit amet laoreet ante. Mauris sit amet mi vitae arcu dignissim porttitor et in arcu. Nullam eleifend molestie arcu, pretium fermentum orci feugiat eget. Integer dapibus tincidunt ipsum, at rutrum magna rutrum at. Quisque pretium convallis vestibulum.",
                  style: ProjectStyles.semiBoldGrey15OpenSans,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              RoundedBtnWidget(
                bntText: "Got it!",
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
