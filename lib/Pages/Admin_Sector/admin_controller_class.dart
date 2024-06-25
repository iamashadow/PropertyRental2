import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:property_rental_2/Pages/Login_Page/model/admin_login_model.dart';
import 'package:property_rental_2/Pages/Login_Page/model/login_rp.dart';
import 'package:property_rental_2/Universal_Widgets/custom_toast.dart';

import '../../Utils/constant.dart';

class AdminControllerClass extends GetxController {
  TextEditingController adminNameController = TextEditingController();
  TextEditingController adminMobileController = TextEditingController();
  TextEditingController adminEmailController = TextEditingController();
  TextEditingController adminPasswordController = TextEditingController();
  Rxn<AdminAccount> adminUserData = Rxn<AdminAccount>();

  var isLoading = false.obs;

  Future<void> getAdminProfile() async {
    try {
      isLoading.value = true;
      // var token = await SecureData.readSecureData(key: "token");
      printInfo(info: "Token.................. $tokenValue");
      var response = await http.get(
        Uri.parse('$baseurl/admin/account/'),
        headers: <String, String>{
          'Authorization': 'Bearer $tokenValue',
          'Content-Type': 'application/json',
        },
      );
      var data = jsonDecode(response.body);
      // printInfo(info: "ddddddddddddddddddddddddData : $data");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("imtiaz");
        adminUserData.value = AdminAccount.fromJson(data["data"]);
        update();
        if (adminUserData.value != null) {
          adminEmailController.text = adminUserData.value!.email!;
          adminNameController.text = adminUserData.value!.name!;
          adminMobileController.text = adminUserData.value!.mobile!;
        }

        customToast(msg: data['message']);
      } else {
        customToast(msg: data['message'], isError: true);
      }
      isLoading.value = false;
      // printInfo(info: "get land user Data : ${account.value!.toJson()}");
      update();
    } catch (e) {
      printError(info: "getLandLordProfile error: $e");
      isLoading.value = false;
    }
  }
}
