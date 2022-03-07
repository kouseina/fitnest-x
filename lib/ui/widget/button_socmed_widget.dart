import 'package:fitnest_x/config/app_theme.dart';
import 'package:flutter/material.dart';

class ButtonSocmedWidget extends StatelessWidget {
  Widget? child;
  ButtonSocmedWidget({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: AppTheme.grayColor3, width: 0.8),
        borderRadius: BorderRadius.circular(14),
      ),
      child: child,
    ));
  }
}
