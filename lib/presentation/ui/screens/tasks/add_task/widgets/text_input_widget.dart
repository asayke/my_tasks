import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/utils/text_styles/app_text_styles.dart';

class TextInputRawWidget extends StatelessWidget {
  final TextEditingController textEditingController;

  const TextInputRawWidget({required this.textEditingController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Name",
          style: AppStyles.semiBoldBlack20OpenSans,
        ),
        SizedBox(
          width: 11.w,
        ),
        Expanded(
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
            controller: textEditingController,
            decoration:
                const InputDecoration(hintText: "Lorem ipsum dolor sit amet"),
          ),
        ),
      ],
    );
  }
}