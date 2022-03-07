import 'package:fitnest_x/config/app_theme.dart';
import 'package:fitnest_x/ui/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  var pageController = PageController().obs;
  var valueProgress = 0.25.obs;
  var valuePage = 0.obs;

  void changePage(int valuePage) {
    switch (valuePage) {
      case 1:
        valueProgress.value = 0.50;
        break;
      case 2:
        valueProgress.value = 0.75;
        break;
      case 3:
        valueProgress.value = 1.0;
        break;
      default:
        valueProgress.value = 0.25;
    }
  }

  void nextPage() {
    if (valuePage.value == 3) {
      Get.to(SignUpScreen());
      return;
    }
    pageController.value.nextPage(
      duration: Duration(milliseconds: 330),
      curve: Curves.easeIn,
    );
  }
}
