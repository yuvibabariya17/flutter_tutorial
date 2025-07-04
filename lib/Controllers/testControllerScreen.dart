import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Testcontrollerscreen extends GetxController {
  late TextEditingController nameCtr, phoneCtr, passCtr, confirmCtr;

  RxBool obsecureText = true.obs;
  RxBool confirmobsecureText = true.obs;

  var name = ''.obs;
  var phone = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  // @override
  // void onInit() {
  //   super.onInit();

  //   nameCtr = TextEditingController();
  //   phoneCtr = TextEditingController();
  //   passCtr = TextEditingController();
  //   confirmCtr = TextEditingController();
  // }
}
