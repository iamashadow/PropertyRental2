import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/Login_Page/model/login_rp.dart';
import 'package:property_rental_2/Universal_Widgets/custom_toast.dart';
import 'package:property_rental_2/Utils/constant.dart';
import 'package:property_rental_2/Utils/secure_storage.dart';

class LandLordProfileInformationControllerClass extends GetxController {
  TextEditingController landLordNameController = TextEditingController();
  TextEditingController landLordBioController = TextEditingController();
  TextEditingController landLordMobileNumberController =
      TextEditingController();
  TextEditingController landLordWhatsAppNumberController =
      TextEditingController();
  TextEditingController landLordOfficeNumberController =
      TextEditingController();
  TextEditingController landLordEmailController = TextEditingController();
  TextEditingController landLordNationalityController = TextEditingController();

  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  var isLoading = false.obs;
  Rxn<Account> account = Rxn<Account>();

  Future<void> verifyLandLord({required bool isVerifyOrUpdate}) async {
    try {
      isLoading.value = true;
      var token = await SecureData.readSecureData(key: "token");
      var response = await http.patch(
          Uri.parse(
            isVerifyOrUpdate
                ? '$baseurl/landlord/verify'
                : '$baseurl/landlord/update',
          ),
          headers: <String, String>{
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            // "profileImage": "https://example.com/profile.jpg",
            // "name": "John Doe",
            // "bio": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            // "mobileNumber": "+1234567890",
            // "whatsAppNumber": "+1234567890",
            // "officeNumber": "+1234567890",
            // "dateOfBirth": "1990-01-01",
            // "nationality": "US",
            // "nidImage": "https://example.com/nid.jpg"

            "name": landLordNameController.text,
            "bio": landLordBioController.text,
            "mobileNumber": landLordMobileNumberController.text,
            "whatsAppNumber": landLordWhatsAppNumberController.text,
            "officeNumber": landLordOfficeNumberController.text,
            "dateOfBirth": selectedDate.value.toString(),
          }));
      var data = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        account.value = Account.fromJson(data);
        customToast(msg: data['message']);
      } else {
        customToast(msg: data['message'], isError: true);
      }
      isLoading.value = false;
    } catch (e) {
      printError(info: e.toString());
      isLoading.value = false;
    }
  }
}
