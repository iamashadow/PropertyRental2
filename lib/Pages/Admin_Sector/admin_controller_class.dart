import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../Utils/constant.dart';

class AdminControllerClass extends GetxController{
  TextEditingController adminEmailController = TextEditingController();
  TextEditingController adminPasswordController = TextEditingController();

  var isLoading = false.obs;


  Future<void> loginRequest({required bool loginOrRegistration}) async {
    try {
      isLoading.value = true;
      final response = await http.post(
        Uri.parse('$baseurl/admin/account/login'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': adminEmailController.text,
          'password': adminPasswordController.text,
        }),
      );
      final LoginResponse loginResponse = loginResponseFromJson(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        userData = loginResponse.data!;
        tokenValue = loginResponse.data!.token;
        await SecureData.writeSecureData(
            key: 'token', value: loginResponse.data!.token);
        // landLordProfileInformationControllerClass.getLandLordProfile();

        isLoading.value = false;

        loginOrRegistration
            ? Get.to(() => const HomePage())
            : Get.to(() => const LandLordProfileInformationPage());
        customToast(msg: loginResponse.message!);
        Get.find<LandLordProfileInformationControllerClass>()
            .getLandLordProfile();
        printInfo(info: userData.toJson().toString());
      } else {
        isLoading.value = false;
        printError(info: response.body);
        customToast(isError: true, msg: loginResponse.message!);
      }
    } catch (e) {
      printError(info: "login/registration error: $e");
      isLoading.value = false;
    }
  }


}