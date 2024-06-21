import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/Login_Page/model/login_rp.dart';
import 'package:property_rental_2/Universal_Widgets/custom_toast.dart';
import 'package:property_rental_2/Utils/constant.dart';
import 'package:property_rental_2/Utils/secure_storage.dart';

import '../../Login_Page/login_page_controller.dart';

class LandLordProfileInformationControllerClass extends GetxController {
  TextEditingController landLordNameController = TextEditingController();
  TextEditingController landLordBioController = TextEditingController();
  TextEditingController landLordMobileNumberController = TextEditingController();
  TextEditingController landLordWhatsAppNumberController = TextEditingController();
  TextEditingController landLordOfficeNumberController = TextEditingController();
  TextEditingController landLordEmailController = TextEditingController();
  TextEditingController landLordNationalityController = TextEditingController();
  TextEditingController selectedDate = TextEditingController();
  // Rx<DateTime?> selectedDate = Rx<DateTime?>(null);


  var isLoading = false.obs;
  Rxn<Account> account = Rxn<Account>();
  File? imageFile;
  // String? imageUrl;

  String? NidFrontImageUrl;
  String? NidBackImageUrl;
  String? ProfileImage;
  RxBool imageIsUploadingtoServer = false.obs;

  LoginPageControllerClass loginPageControllerClass = Get.put(LoginPageControllerClass());




  @override
  void onInit() {
    super.onInit();
    landLordNameController.text = loginPageControllerClass.userData.account?.name??"";
    landLordBioController.text = loginPageControllerClass.userData.account?.bio??"";
    landLordMobileNumberController.text = loginPageControllerClass.userData.account?.mobileNumber??"";
    landLordWhatsAppNumberController.text = loginPageControllerClass.userData.account?.whatsAppNumber??"";
    landLordOfficeNumberController.text = loginPageControllerClass.userData.account?.officeNumber??"";
    landLordEmailController.text = loginPageControllerClass.userData.account?.email??"";
    landLordNationalityController.text = loginPageControllerClass.userData.account?.nationality??"";
    selectedDate.text = loginPageControllerClass.userData.account?.dateOfBirth.toString()??"";
  }

  Future<String?> pickImage() async {
    try {
      imageIsUploadingtoServer.value = true;
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      if (result == null){
        imageIsUploadingtoServer.value = false;
        return null;
      };

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
          String? uploaded_image_path = await uploadImage(File(imagePath)) ;


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


            "profileImage": ProfileImage,
            "name": landLordNameController.text,
            "bio": landLordBioController.text,
            "mobileNumber": landLordMobileNumberController.text,
            "whatsAppNumber": landLordWhatsAppNumberController.text,
            "officeNumber": landLordOfficeNumberController.text,
            "dateOfBirth": selectedDate.text,
            "nationality": landLordNationalityController.text,
            "nidImage": '${NidFrontImageUrl},${NidFrontImageUrl}',
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


