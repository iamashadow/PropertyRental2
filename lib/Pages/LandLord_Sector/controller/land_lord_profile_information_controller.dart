import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:property_rental_2/Pages/Login_Page/model/login_rp.dart';
import 'package:property_rental_2/Universal_Widgets/custom_toast.dart';
import 'package:property_rental_2/Utils/constant.dart';
import 'package:property_rental_2/Utils/secure_storage.dart';

import '../../Login_Page/login_page_controller.dart';

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
  TextEditingController selectedDate = TextEditingController();
  // Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  final FlutterSecureStorage secureStorage = FlutterSecureStorage();

  var isLoading = false.obs;
  Rxn<Account> account = Rxn<Account>();
  File? imageFile;
  // String? imageUrl;

  String? NidFrontImageUrl;
  String? NidBackImageUrl;
  String? ProfileImage;
  RxBool imageIsUploadingtoServer = false.obs;

  var verifyIsLoading = false.obs;

  LoginPageControllerClass loginPageControllerClass = Get.find();

  // @override
  // void onInit() {
  //   super.onInit();
  //   landLordNameController.text =
  //       loginPageControllerClass.userData.account?.name ?? "";

  //   ProfileImage =
  //       loginPageControllerClass.userData.account?.profileImage ?? "";

  //   NidFrontImageUrl =
  //       loginPageControllerClass.userData.account?.nidImage?.split(",").first ??
  //           "";

  //   NidBackImageUrl =
  //       loginPageControllerClass.userData.account?.nidImage?.split(",").last ??
  //           "";

  //   landLordBioController.text =
  //       loginPageControllerClass.userData.account?.bio ?? "";
  //   landLordMobileNumberController.text =
  //       loginPageControllerClass.userData.account?.mobileNumber ?? "";
  //   landLordWhatsAppNumberController.text =
  //       loginPageControllerClass.userData.account?.whatsAppNumber ?? "";
  //   landLordOfficeNumberController.text =
  //       loginPageControllerClass.userData.account?.officeNumber ?? "";
  //   landLordEmailController.text =
  //       loginPageControllerClass.userData.account?.email ?? "";
  //   landLordNationalityController.text =
  //       loginPageControllerClass.userData.account?.nationality ?? "";
  //   selectedDate.text = loginPageControllerClass.userData.account?.dateOfBirth
  //           .toString()
  //           .split("T")
  //           .first ??
  //       "";

  //   loadSavedDate();
  // }

  Future<void> loadSavedDate() async {
    String? savedDate = await secureStorage.read(key: 'selectedDate');
    if (savedDate != null) {
      selectedDate.text = savedDate;
      update();
    }
  }

  Future<String?> pickImage() async {
    try {
      imageIsUploadingtoServer.value = true;
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      if (result == null) {
        imageIsUploadingtoServer.value = false;
        return null;
      }
      ;

      if (kIsWeb) {
        // On web, use bytes
        Uint8List? imageData = result.files.first.bytes;
        if (imageData != null) {
          String? picked_image_path = await uploadImage(imageData);
          imageIsUploadingtoServer.value = false;
          return picked_image_path;
        }
      } else {
        // On mobile, use path
        String? imagePath = result.files.single.path;
        if (imagePath != null) {
          String? uploaded_image_path = await uploadImage(File(imagePath));

          imageIsUploadingtoServer.value = false;
          return uploaded_image_path;
        }
      }

      imageIsUploadingtoServer.value = false;
      return null;
    } catch (e) {
      imageIsUploadingtoServer.value = false;
      print(e.toString());
    }
  }

  Future<String?> uploadImage(dynamic image) async {
    try {
      final url = Uri.parse("https://api.cloudinary.com/v1_1/drzze1rql/upload");
      var request = http.MultipartRequest('POST', url)
        ..fields['upload_preset'] = 's21fuvrf';
      if (kIsWeb) {
        // On web, use bytes
        print('Image bytes length: ${image.length}');
        request.files.add(http.MultipartFile(
            'file', http.ByteStream(Stream.value(image)), image.length,
            filename: 'upload.jpg'));
      } else {
        // On mobile, use path
        request.files
            .add(await http.MultipartFile.fromPath('file', image.path));
      }
      var response = await request.send();
      final responseData = await response.stream.toBytes();
      final responseString = String.fromCharCodes(responseData);
      print('Response: $responseString');

      print(response.statusCode);
      print(jsonDecode(responseString));

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(responseString);
        // imageUrl = jsonMap['url'];
        //
        // printInfo(info: imageUrl!);
        return jsonMap['url'];
      }
      return null;
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> verifyLandLord({required bool isVerifyOrUpdate}) async {
    try {
      verifyIsLoading.value = true;
      var token = await SecureData.readSecureData(key: "token");
      var response = await http.patch(
          Uri.parse(
            isVerifyOrUpdate
                ? '$baseurl/landlord/account/verify'
                : '$baseurl/landlord/account/update',
          ),
          headers: <String, String>{
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            "profileImage": ProfileImage,
            "name": landLordNameController.text,
            "bio": landLordBioController.text,
            "mobileNumber": landLordMobileNumberController.text,
            "whatsAppNumber": landLordWhatsAppNumberController.text,
            "officeNumber": landLordOfficeNumberController.text,
            "dateOfBirth": selectedDate.text,
            "nationality": landLordNationalityController.text,
            "nidImage": '$NidFrontImageUrl,$NidFrontImageUrl',
          }));
      var data = jsonDecode(response.body);
      print("Data : $data");
      if (response.statusCode == 200 || response.statusCode == 201) {
        account.value = Account.fromJson(data["data"]);
        // loginPageControllerClass.userData = Account.fromJson(data);
        customToast(msg: data['message']);
      } else {
        customToast(msg: data['message'], isError: true);
      }
      verifyIsLoading.value = false;
      // getLandLordProfile();
      printInfo(info: "Accaunt Data : $account");
      update();
    } catch (e) {
      printError(info: e.toString());
      verifyIsLoading.value = false;
    }
  }

  Future<void> getLandLordProfile() async {
    try {
      isLoading.value = true;
      // var token = await SecureData.readSecureData(key: "token");
      printInfo(info: "Token.................. $tokenValue");
      var response = await http.get(
        Uri.parse('$baseurl/landlord/account/'),
        headers: <String, String>{
          'Authorization': 'Bearer $tokenValue',
          'Content-Type': 'application/json',
        },
      );
      var data = jsonDecode(response.body);
      // printInfo(info: "ddddddddddddddddddddddddData : $data");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("imtiaz");
        account.value = Account.fromJson(data['data']);

        loginPageControllerClass.userData =
            UserData(token: tokenValue, account: account.value!);
        update();
        printInfo(info: "daaaaaaaaaaaaaaaaaaaaaaaaaaData : ${data}");
        if (account.value != null) {
          landLordNameController.text = account.value?.name ?? "";
          landLordBioController.text = account.value?.bio ?? "";
          landLordEmailController.text = account.value?.email ?? "";
          landLordMobileNumberController.text =
              account.value?.mobileNumber ?? "";
          landLordNationalityController.text = account.value?.nationality ?? "";
          landLordOfficeNumberController.text =
              account.value?.officeNumber ?? "";
          landLordWhatsAppNumberController.text =
              account.value?.whatsAppNumber ?? "";
          selectedDate.text = DateFormat("yyyy-MM-dd")
              .format(account.value?.dateOfBirth ?? DateTime.now());
          NidBackImageUrl =
              account.value?.nidImage?.split(",").lastOrNull ?? "";
          NidFrontImageUrl =
              account.value?.nidImage?.split(",").firstOrNull ?? "";
          ProfileImage = account.value?.profileImage ?? "";
        }
        customToast(msg: data['message']);
      } else {
        customToast(msg: data['message'], isError: true);
      }
      isLoading.value = false;
      printInfo(info: "get land user Data : ${account.value!.toJson()}");
      update();
    } catch (e) {
      printError(info: "getLandLordProfile error: $e");
      isLoading.value = false;
    }
  }
}
