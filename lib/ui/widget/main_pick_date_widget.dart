import 'package:fitnest_x/config/app_theme.dart';
import 'package:fitnest_x/logic/helper/date_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainPickDateWidget extends StatefulWidget {
  Function(String)? onResultText;
  MainPickDateWidget({
    Key? key,
    this.onResultText,
  }) : super(key: key);

  @override
  State<MainPickDateWidget> createState() => _MainPickDateWidgetState();
}

class _MainPickDateWidgetState extends State<MainPickDateWidget> {
  var initialDate = DateTime(
    DateTime.now().year - 10,
  ).obs;
  var datePicked = ''.obs;

  void _onDatePicker() async {
    var selected = await showDatePicker(
      context: Get.context!,
      initialDate: initialDate.value,
      firstDate: DateTime(1962),
      lastDate: DateTime(DateTime.now().year - 10, 12, 31),
    );

    if (selected != null) {
      initialDate.value = selected;

      String valueText =
          '${selected.day} ${DatePickerUtils.monthText[selected.month - 1]} ${selected.year}';
      datePicked.value = valueText;

      if (widget.onResultText != null) {
        widget.onResultText!(valueText);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          _onDatePicker();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AppTheme.borderColor,
          ),
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/ic_date.svg",
                width: 18,
                height: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                datePicked.value.isEmpty ? "Date of Birth" : datePicked.value,
                style: Get.textTheme.bodyText2!.copyWith(
                  color: datePicked.value.isEmpty
                      ? AppTheme.grayColor2
                      : AppTheme.blackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
