import 'package:fitnest_x/config/app_theme.dart';
import 'package:fitnest_x/logic/controller/sign_up_controller.dart';
import 'package:fitnest_x/ui/screen/intro_screen.dart';
import 'package:fitnest_x/ui/widget/main_button_widget.dart';
import 'package:fitnest_x/ui/widget/main_checkbox_widget.dart';
import 'package:fitnest_x/ui/widget/main_dropdown_widget.dart';
import 'package:fitnest_x/ui/widget/main_pick_date_widget.dart';
import 'package:fitnest_x/ui/widget/main_scaffold_widget.dart';
import 'package:fitnest_x/ui/widget/main_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUpSecondScreen extends StatelessWidget {
  var controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => MainScaffoldWidget(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/il_complete_profile.png"),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Let’s complete your profile",
                  style: Get.textTheme.headline4!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "It will help us to know more about you!",
                  style: Get.textTheme.bodyText2!.copyWith(
                    color: AppTheme.grayColor1,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MainDropdown(
                  value: controller.currentItemDropDown.value.title,
                  dropDownList: controller.dropDownList
                      .map((e) => MainItemDropDownWidget(
                          itemName: e.title ?? '',
                          value: controller.currentItemDropDown.value.index ==
                              e.index,
                          onChanged: (v) {
                            controller.dropDownList.refresh();
                            controller.currentItemDropDown.value = e;
                          }))
                      .toList(),
                  hintText: 'Choose Gender',
                ),
                const SizedBox(
                  height: 15,
                ),
                MainPickDateWidget(),
                const SizedBox(
                  height: 15,
                ),
                MainTextfieldWidget(
                  iconRoute: "assets/icons/ic_weight.svg",
                  hintText: "Your Weight",
                  controller: TextEditingController(),
                  unit: "kg",
                ),
                const SizedBox(
                  height: 15,
                ),
                MainTextfieldWidget(
                  iconRoute: "assets/icons/ic_height.svg",
                  hintText: "Your Height",
                  controller: TextEditingController(),
                  unit: 'cm',
                ),
                const SizedBox(
                  height: 30,
                ),
                MainButtonWidget(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next",
                        style: Theme.of(Get.context!)
                            .textTheme
                            .subtitle2!
                            .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      SvgPicture.asset("assets/icons/ic_right_arrow.svg"),
                    ],
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ));
  }
}
