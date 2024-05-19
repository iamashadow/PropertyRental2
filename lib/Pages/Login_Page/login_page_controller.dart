import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/Home_Page/home_page.dart';
import 'package:property_rental_2/Pages/Login_Page/model/login_rp.dart';
import 'package:property_rental_2/Universal_Widgets/custom_toast.dart';
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
      Get.to(const LandLordProfileInformationPage());
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

  Future<void> loginRequest({required bool loginOrRegistration}) async {
    try {
      isLoading.value = true;
      final response = await http.post(
        Uri.parse(loginOrRegistration
            ? '$baseurl/landlord/login'
            : '$baseurl/landlord/create'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': emailController.text,
          'password': passwordController.text,
        }),
      );
      final LoginResponse loginResponse = loginResponseFromJson(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        userData = loginResponse.data!;
        await SecureData.writeSecureData(key: 'token', value: userData.token);
        isLoading.value = false;
        loginOrRegistration
            ? Get.to(() => const HomePage())
            : Get.to(() => const LandLordProfileInformationPage());
        customToast(msg: loginResponse.message!);
        printInfo(info: userData.toJson().toString());
      } else {
        isLoading.value = false;
        printError(info: response.body);
        customToast(isError: true, msg: loginResponse.message!);
      }
    } catch (e) {
      printError(info: e.toString());
      isLoading.value = false;
    }
  }
}
