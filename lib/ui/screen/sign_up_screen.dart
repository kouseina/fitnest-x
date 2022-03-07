import 'package:fitnest_x/config/app_theme.dart';
import 'package:fitnest_x/logic/controller/sign_up_controller.dart';
import 'package:fitnest_x/ui/screen/intro_screen.dart';
import 'package:fitnest_x/ui/screen/sign_up_second_screen.dart';
import 'package:fitnest_x/ui/widget/button_socmed_widget.dart';
import 'package:fitnest_x/ui/widget/check_policy_widget.dart';
import 'package:fitnest_x/ui/widget/main_button_widget.dart';
import 'package:fitnest_x/ui/widget/main_checkbox_widget.dart';
import 'package:fitnest_x/ui/widget/main_scaffold_widget.dart';
import 'package:fitnest_x/ui/widget/main_textfield_widget.dart';
import 'package:fitnest_x/ui/widget/or_divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  var controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    Widget _top() {
      return Column(
        children: [
          Text(
            "Hey there,",
            style: Get.theme.textTheme.subtitle2,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Create an Account",
            style: Get.theme.textTheme.headline4!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          MainTextfieldWidget(
            controller: TextEditingController(),
            iconRoute: "assets/icons/ic_profile.svg",
            hintText: "First Name",
          ),
          const SizedBox(
            height: 15,
          ),
          MainTextfieldWidget(
            controller: TextEditingController(),
            iconRoute: "assets/icons/ic_profile.svg",
            hintText: "Last Name",
          ),
          const SizedBox(
            height: 15,
          ),
          MainTextfieldWidget(
            controller: controller.emailController.value,
            iconRoute: "assets/icons/ic_email.svg",
            hintText: "Email",
          ),
          const SizedBox(
            height: 15,
          ),
          MainTextfieldWidget(
            controller: TextEditingController(),
            iconRoute: "assets/icons/ic_password.svg",
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(height: 10),
          CheckPolicyWidget(
            onResult: (value) {},
          ),
        ],
      );
    }

    Widget _bottom() {
      return Column(
        children: [
          MainButtonWidget(
            onPressed: () {
              Get.to(SignUpSecondScreen());
            },
            child: Text(
              "Register",
              style: Get.theme.textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const OrDividerWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonSocmedWidget(
                child: Image.asset("assets/icons/ic_google.png"),
              ),
              const SizedBox(
                width: 30,
              ),
              ButtonSocmedWidget(
                child: Image.asset("assets/icons/ic_facebook.png"),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          RichText(
            text: TextSpan(
              text: "Already have an account? ",
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(
                  text: "Login",
                  style: TextStyle(
                    color: AppTheme.secondaryColor1,
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    return Obx(
      () => MainScaffoldWidget(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _top(),
                const SizedBox(
                  height: 140,
                ),
                _bottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
