import 'package:fitnest_x/config/app_theme.dart';
import 'package:fitnest_x/ui/screen/intro_screen.dart';
import 'package:fitnest_x/ui/widget/main_button_widget.dart';
import 'package:fitnest_x/ui/widget/main_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScaffoldWidget(
      bottom: 40,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Image.asset("assets/images/ic_brand.png"),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Everybody Can Train",
                style: Get.theme.textTheme.headline4!.copyWith(
                  color: AppTheme.grayColor1,
                ),
              ),
            ],
          ),
          MainButtonWidget(
            onPressed: () => Get.to(IntroScreen()),
            child: Text(
              "Get Started",
              style: Get.theme.textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
