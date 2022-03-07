import 'package:fitnest_x/logic/model/main_dropdown_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var emailController = TextEditingController().obs;

  var dropDownList = [
    MainDropDownModel(title: 'Men', index: 0),
    MainDropDownModel(title: 'Women', index: 1),
    MainDropDownModel(title: 'Both', index: 2),
  ].obs;
  var dropdownSelected = false.obs;
  var currentItemDropDown = MainDropDownModel().obs;
}
