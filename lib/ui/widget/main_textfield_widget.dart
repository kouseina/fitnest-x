import 'package:fitnest_x/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainTextfieldWidget extends StatefulWidget {
  String iconRoute;
  String hintText;
  bool obscureText;
  TextEditingController controller;
  String unit;

  MainTextfieldWidget({
    Key? key,
    required this.iconRoute,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
    this.unit = "",
  }) : super(key: key);

  @override
  State<MainTextfieldWidget> createState() => _MainTextfieldWidgetState();
}

class _MainTextfieldWidgetState extends State<MainTextfieldWidget> {
  bool _isShowPasssword = false;

  @override
  Widget build(BuildContext context) {
    Widget _iconShowPassword() {
      if (widget.obscureText == true) {
        if (_isShowPasssword == true) {
          return SvgPicture.asset(
            "assets/icons/ic_show_password.svg",
            width: 18,
            height: 18,
          );
        }
        return SvgPicture.asset(
          "assets/icons/ic_hide_password.svg",
          width: 18,
          height: 18,
        );
      }
      return const SizedBox();
    }

    Widget _unit() {
      if (widget.unit.isNotEmpty) {
        return Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: AppTheme.secondaryLinearGradient,
              ),
              child: Center(
                child: Text(
                  widget.unit.toUpperCase(),
                  style: Get.textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        );
      }
      return const SizedBox();
    }

    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppTheme.borderColor,
            ),
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                SvgPicture.asset(
                  widget.iconRoute,
                  width: 18,
                  height: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    controller: widget.controller,
                    obscureText:
                        widget.obscureText == true ? !_isShowPasssword : false,
                    style: Get.theme.textTheme.bodyText2,
                    decoration: InputDecoration(
                      isDense: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(0),
                      hintText: widget.hintText,
                      hintStyle: Get.theme.textTheme.bodyText2!.copyWith(
                        color: AppTheme.grayColor2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isShowPasssword = !_isShowPasssword;
                    });
                  },
                  child: _iconShowPassword(),
                ),
              ],
            ),
          ),
        ),
        _unit(),
      ],
    );
  }
}
