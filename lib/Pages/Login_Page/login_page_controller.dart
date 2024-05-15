import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/Home_Page/home_page.dart';
import 'package:property_rental_2/Pages/Login_Page/model/login_rp.dart';
import 'package:property_rental_2/Utils/constant.dart';
import 'package:property_rental_2/Utils/secure_storage.dart';
import '../LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/land_lord_profile_information_page.dart';
import 'package:http/http.dart' as http;

class LoginPageControllerClass extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var isLoading = false.obs;
  UserData userData = UserData();

  String generateRandomNumber() {
    final Random random = Random();
    String randomNumber = '';

    for (int i = 0; i < 10; i++) {
      randomNumber += random.nextInt(10).toString();
    }

    return randomNumber;
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void submitForm() {
    if (formKey.currentState!.validate()) {
      Get.to(LandLordProfileInformationPage());
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

  Future<void> loginRequest() async {
    try {
      isLoading.value = true;
      final response = await http.post(
        Uri.parse('$baseurl/landlord/login'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': emailController.text,
          'password': passwordController.text,
        }),
      );

      if (response.statusCode == 200) {
        final LoginResponse loginResponse =
            loginResponseFromJson(response.body);
        userData = loginResponse.data!;
        await SecureData.writeSecureData(key: 'userData', value: userData);
        isLoading.value = false;
        Get.to(() => HomePage());
      } else {
        isLoading.value = false;
        printError(info: response.body);
      }
    } catch (e) {
      printError(info: e.toString());
      isLoading.value = false;
    }
  }
}
