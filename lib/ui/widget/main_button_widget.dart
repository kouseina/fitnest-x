import 'package:fitnest_x/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainButtonWidget extends StatelessWidget {
  Widget child;
  Function onPressed;

  MainButtonWidget({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: GestureDetector(
        onTap: () {
          onPressed();
        },
        child: Container(
          height: 60,
          width: Get.width,
          decoration: BoxDecoration(
            gradient: AppTheme.brandLinearGradient,
            boxShadow: [
              BoxShadow(
                color: Color(0xff95ADFE).withOpacity(0.3),
                blurRadius: 22,
                offset: Offset(0, 10),
              )
            ],
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
