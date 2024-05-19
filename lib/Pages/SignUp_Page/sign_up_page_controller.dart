import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/land_lord_profile_information_page.dart';

class SignUpPageControllerClass extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void submitForm() {
    if (formKey.currentState!.validate()) {
      Get.to(() => LandLordProfileInformationPage());
    }
  }

  String? validateEmail(value) {
    if (value!.isEmpty) {
      return "Please enter an email";
    }

    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return "Please enter a valid email";
    }
    return null;
  }
}
