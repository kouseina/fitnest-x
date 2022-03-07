import 'package:fitnest_x/config/app_theme.dart';
import 'package:fitnest_x/ui/widget/main_checkbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckPolicyWidget extends StatelessWidget {
  Function(bool) onResult;
  CheckPolicyWidget({Key? key, required this.onResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainCheckboxWidget(
          onResult: (value) {
            onResult(value);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: "By continuing you accept our ",
              style: Get.textTheme.caption!.copyWith(
                color: AppTheme.grayColor2,
              ),
              children: const [
                TextSpan(
                  text: "Privacy Policy ",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                TextSpan(
                  text: "and ",
                ),
                TextSpan(
                  text: "\n Term of Use",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
