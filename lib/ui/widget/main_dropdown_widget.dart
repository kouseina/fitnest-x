import 'package:fitnest_x/config/app_theme.dart';
import 'package:fitnest_x/ui/widget/main_checkbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainDropdown extends StatefulWidget {
  String? value;
  List<MainItemDropDownWidget> dropDownList;
  String hintText;
  bool initiallyExpanded;

  MainDropdown(
      {Key? key,
      required this.dropDownList,
      required this.hintText,
      required this.value,
      this.initiallyExpanded = false})
      : super(key: key);

  @override
  State<MainDropdown> createState() => _MainDropdownState();
}

class _MainDropdownState extends State<MainDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppTheme.borderColor,
      ),
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ExpansionTile(
          key: Key(widget.value ?? ''),
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.zero,
          initiallyExpanded: widget.initiallyExpanded,
          onExpansionChanged: (value) {
            print(widget.value == widget.hintText);
          },
          title: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/ic_gender.svg",
                width: 18,
                height: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.value ?? widget.hintText,
                style: Get.textTheme.bodyText2!.copyWith(
                  color: (widget.value?.isEmpty ?? true)
                      ? AppTheme.grayColor2
                      : AppTheme.blackColor,
                ),
              ),
            ],
          ),
          children: [
            Column(
              children: widget.dropDownList,
            )
          ]),
    );
  }
}

class MainItemDropDownWidget extends StatelessWidget {
  String itemName;
  bool value;
  Function(bool) onChanged;
  MainItemDropDownWidget(
      {Key? key,
      required this.itemName,
      required this.onChanged,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onChanged != null) {
          onChanged(value);
        }
      },
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              itemName,
              style: AppTheme.themeData.textTheme.bodyText2,
            ),
          ),
        ],
      ),
    );
  }
}
