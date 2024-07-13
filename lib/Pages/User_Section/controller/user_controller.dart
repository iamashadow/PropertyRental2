import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';
import 'package:property_rental_2/Pages/Login_Page/login_page_controller.dart';
import '../../../Universal_Widgets/custom_toast.dart';
import '../../../Utils/constant.dart';
import '../../../Utils/secure_storage.dart';
import '../../Login_Page/model/login_rp.dart';
import '../../Login_Page/model/user_profile_details_model.dart';

class UserController extends GetxController{
  final LoginPageControllerClass loginPageControllerClass = Get.find();
  final LandLordProfileInformationControllerClass landLordProfileInformationControllerClass = Get.find();
  TextEditingController userNameController = TextEditingController();
  TextEditingController userBioController = TextEditingController();
  TextEditingController userMobileNumberController = TextEditingController();
  TextEditingController userWhatsAppNumberController = TextEditingController();
  TextEditingController userOfficeNumberController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userNationalityController = TextEditingController();
  TextEditingController selectedDate = TextEditingController();
  Rxn<User> userData = Rxn<User>();
  var isLoading = false.obs;

  String? NidFrontImageUrl;
  String? NidBackImageUrl;
  String? ProfileImage;
  RxBool imageIsUploadingtoServer = false.obs;

  RxBool isTextEditingFieldEditable = true.obs;
  var verifyIsLoading = false.obs;


  Future<void> getMainUserProfile() async {
    try {
      isLoading.value = true;
      // var token = await SecureData.readSecureData(key: "token");
      printInfo(info: "Token.................. $tokenValue");
      var response = await http.get(
        Uri.parse('$baseurl/user/account/'),
        headers: <String, String>{
          'Authorization': 'Bearer $tokenValue',
          'Content-Type': 'application/json',
        },
      );
      var data = jsonDecode(response.body);
      // printInfo(info: "ddddddddddddddddddddddddData : $data");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("imtiaz");
        userData.value = User.fromJson(data['data']);

        // loginPageControllerClass.userData.value =
        //     UserData(token: tokenValue, account: userData.value!);

        printInfo(info: "daaaaaaaaaaaaaaaaaaaaaaaaaaData : ${data}");
        if (userData.value != null) {
          userNameController.text = userData.value?.name ?? "";
          userEmailController.text = userData.value?.email ?? "";
          userMobileNumberController.text =
              userData.value?.phone ?? "";
          userNationalityController.text = userData.value?.nationality ?? "";


          selectedDate.text = DateFormat("yyyy-MM-dd")
              .format(userData.value?.dob ?? DateTime.now());
          NidBackImageUrl =
              userData.value?.nid?.split(",").lastOrNull ?? "";
          NidFrontImageUrl =
              userData.value?.nid?.split(",").firstOrNull ?? "";
          ProfileImage = userData.value?.image ?? "";
        }
        customToast(msg: data['message']);
      } else {
        customToast(msg: data['message'], isError: true);
      }
      isLoading.value = false;
      update();
      printInfo(info: "get land user Data : ${userData.value!.toJson()}");
      update();
    } catch (e) {
      printError(info: "getLandLordProfile error: $e");
      isLoading.value = false;
    }
  }

  Future<void> verifyLandLord({required bool isVerifyOrUpdate}) async {
    try {
      print("image: ${landLordProfileInformationControllerClass.ProfileImage}");
      print("name: ${userNameController.text}");
      print("mobile: ${userMobileNumberController.text}");
      print("dob: ${selectedDate.text}");
      print("nation: ${userNationalityController.text}");
      print("nid: ${landLordProfileInformationControllerClass.NidFrontImageUrl},${landLordProfileInformationControllerClass.NidBackImageUrl}");
      verifyIsLoading.value = true;
      var token = await SecureData.readSecureData(key: "token");
      var response = await http.patch(
          Uri.parse(
            isVerifyOrUpdate
                ? '$baseurl/user/account/verify'
                : '$baseurl/user/account/update',
          ),
          headers: <String, String>{
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            "image": landLordProfileInformationControllerClass.ProfileImage,
            // "name": userNameController.text,
            "phone": userMobileNumberController.text,
            "dob": selectedDate.text,
            "nationality": userNationalityController.text,
            "nid": '${landLordProfileInformationControllerClass.NidFrontImageUrl},${landLordProfileInformationControllerClass.NidBackImageUrl}',
          }));

      var data = jsonDecode(response.body);
      print("Data : $data");
      if (response.statusCode == 200 || response.statusCode == 201) {
        userData.value = User.fromJson(data["data"]);
        // loginPageControllerClass.userData = Account.fromJson(data);
        customToast(msg: data['message']);
      } else {
        customToast(msg: data['message'], isError: true);
      }
      verifyIsLoading.value = false;
      getMainUserProfile();
      printInfo(info: "Accaunt Data : $userData");
      update();
    } catch (e) {
      printError(info: e.toString());
      verifyIsLoading.value = false;
    }
  }
}