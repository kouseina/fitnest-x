import 'package:fitnest_x/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainCheckboxWidget extends StatefulWidget {
  Function(bool) onResult;
  bool value;
  MainCheckboxWidget({Key? key, required this.onResult, this.value = false})
      : super(key: key);

  @override
  State<MainCheckboxWidget> createState() => _MainCheckboxWidgetState();
}

class _MainCheckboxWidgetState extends State<MainCheckboxWidget> {
  @override
  void initState() {
    valueCheck.value = widget.value;
    super.initState();
  }

  var valueCheck = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          valueCheck.toggle();
          widget.onResult(valueCheck.value);
        },
        child: Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            border: Border.all(
              color: valueCheck.isTrue
                  ? AppTheme.brandColor1
                  : AppTheme.grayColor2,
              width: 0.8,
            ),
            color:
                valueCheck.isTrue ? AppTheme.brandColor1 : Colors.transparent,
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 12,
            ),
          ),
        ),
      ),
    );
  }
}
