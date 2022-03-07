import 'package:fitnest_x/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: AppTheme.grayColor3,
              height: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Or",
              style: Get.textTheme.bodyText2,
            ),
          ),
          Expanded(
            child: Divider(
              color: AppTheme.grayColor3,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
