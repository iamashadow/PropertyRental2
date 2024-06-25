import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/Admin_Sector/Page2/Admin_Profile/admin_profile_page.dart';
import 'package:property_rental_2/Pages/Home_Page/home_page.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';
import 'package:property_rental_2/Pages/Login_Page/model/admin_login_model.dart';
import 'package:property_rental_2/Pages/Login_Page/model/login_rp.dart';
import 'package:property_rental_2/Universal_Widgets/custom_toast.dart';
import 'package:property_rental_2/Utils/constant.dart';
import 'package:property_rental_2/Utils/secure_storage.dart';
import '../LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/land_lord_profile_information_page.dart';
import 'package:http/http.dart' as http;

class LoginPageControllerClass extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // LandLordProfileInformationControllerClass
  //     landLordProfileInformationControllerClass = Get.find();
  var whichRole = ''.obs;

  var isLoading = false.obs;
  UserData userData = UserData();
  Rxn<AdminData> adminData = Rxn<AdminData>();

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
        Uri.parse(whichRole.value == 'Admin'
            ? loginOrRegistration
                ? '$baseurl/admin/account/login'
                : '$baseurl/admin/account/create'
            : whichRole.value == 'LandLord'
                ? loginOrRegistration
                    ? '$baseurl/landlord/account/login'
                    : '$baseurl/landlord/account/create'
                : ""),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': emailController.text,
          'password': passwordController.text,
        }),
      );

      // Declare variables outside of the conditionals
      LoginResponse? loginResponse;
      AdminLoginRpModel? adminLoginRpModel;

      if (response.statusCode == 200 || response.statusCode == 201) {
        if (whichRole.value == "LandLord") {
          loginResponse = loginResponseFromJson(response.body);
        } else if (whichRole.value == "Admin") {
          adminLoginRpModel = adminLoginRpModelFromJson(response.body);
        }

        // Handle token storage and navigation based on role
        if (whichRole.value == 'Admin' && adminLoginRpModel != null) {
          adminData.value = adminLoginRpModel.data;
          await SecureData.writeSecureData(
              key: 'token', value: adminLoginRpModel.data!.token);
          tokenValue = adminLoginRpModel.data!.token;
          loginOrRegistration
              ? Get.to(() => const HomePage())
              : Get.to(() => const AdminProfilePage());
          customToast(msg: adminLoginRpModel.message!);
        } else if (whichRole.value == 'LandLord' && loginResponse != null) {
          userData = loginResponse.data!;
          await SecureData.writeSecureData(
              key: 'token', value: loginResponse.data!.token);
          tokenValue = loginResponse.data!.token;
          loginOrRegistration
              ? Get.to(() => const HomePage())
              : Get.to(() => const LandLordProfileInformationPage());
          customToast(msg: loginResponse.message!);
        }
// landLordProfileInformationControllerClass.getLandLordProfile();
        isLoading.value = false;
      } else {
        isLoading.value = false;
        printError(info: response.body);
        customToast(isError: true, msg: "Login failed");
      }
    } catch (e) {
      printError(info: "login/registration error: $e");
      isLoading.value = false;
      customToast(isError: true, msg: "An error occurred");
    }
  }
}
