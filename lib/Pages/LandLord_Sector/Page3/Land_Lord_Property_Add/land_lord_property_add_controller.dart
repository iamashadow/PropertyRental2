import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Page2/Land_Lord_Properties/land_lord_properties.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';
import 'package:property_rental_2/Utils/constant.dart';

class LandLordPropertyAddController extends GetxController {
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  final LandLordProfileInformationControllerClass
      landLordProfileInformationControllerClass =
      Get.find<LandLordProfileInformationControllerClass>();
  var propertyNameController = TextEditingController();
  var propertyPriceController = TextEditingController();
  var propertyUploadDateController = TextEditingController();
  var propertyIdController = TextEditingController();
  var propertyBedRoomsController = TextEditingController();
  var propertyBathRoomsController = TextEditingController();
  var propertyAreaController = TextEditingController();
  var propertyBioController = TextEditingController();
  var propertyPropertyLocationController = TextEditingController();
  var documentUrl = TextEditingController();
  TextEditingController propertyVideoUrl = TextEditingController();
  var propertyStatus = "".obs;
  var propertyType = "".obs;

  List<File> files = [];
  var uploadingImage = false.obs;
  var isLoading = false.obs;

  var propertyImageList = [].obs;
  // var propertyImageList = <File>[].obs;

  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  String generateRandomNumber() {
    final Random random = Random();
    String randomNumber = '';

    for (int i = 0; i < 10; i++) {
      randomNumber += random.nextInt(10).toString();
    }

    return randomNumber;
  }

  Future<void> uploadPropertyImage() async {
    uploadingImage.value = true;
    String? image = await landLordProfileInformationControllerClass.pickImage();
    if (image != null) {
      propertyImageList.add(image);
    }
    printInfo(info: "length of the image list ${propertyImageList.length}");
    uploadingImage.value = false;
  }

  Future<String?> uploadFile() async {
    try {
      isLoading.value = true;
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.any,
      );

      if (result != null) {
        Uint8List? fileBytes;
        String? fileName;

        if (kIsWeb) {
          fileBytes = result.files.first.bytes;
          fileName = result.files.first.name;
        } else {
          File file = File(result.files.first.path!);
          fileBytes = await file.readAsBytes();
          fileName = file.uri.pathSegments.last;
        }

        if (fileBytes != null && fileName != null) {
          final Reference storageReference =
              FirebaseStorage.instance.ref().child('uploads/$fileName');
          final UploadTask uploadTask = storageReference.putData(fileBytes);

          final TaskSnapshot taskSnapshot = await uploadTask;
          final String downloadURL = await taskSnapshot.ref.getDownloadURL();

          print('File uploaded successfully: $downloadURL');

          Get.snackbar('Success', 'File uploaded successfully: $downloadURL');
          isLoading.value = false;
          return downloadURL;
        }
        isLoading.value = false;
        return null;
      } else {
        Get.snackbar('Error', 'No file selected');
        isLoading.value = false;
        return null;
      }
    } catch (e) {
      Get.snackbar('Error', 'An error occurred while uploading the file: $e');
      print('Error: $e');
      isLoading.value = false;
      return null;
    }
  }

  Future<void> addProperty() async {
    try {
      isLoading.value = true;
      final response = await http.post(
        Uri.parse(
            'https://property-rental-backend-ashen.vercel.app/api/v1/landlord/properties'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $tokenValue',
        },
        body: jsonEncode({
          "propertyID": generateRandomNumber(),
          "propertyName": propertyNameController.text,
          // String formattedDate = DateFormat('yyyy-MM-ddTHH:mm:ssZ').format(yourDateTimeObject);
          // "propertyUploadingDate":
          //     DateFormat('yyyy-MM-ddTHH:mm:ssZ').format(DateTime.now()),
          // "lastStatusUpdatingDate":
          //     DateFormat('yyyy-MM-ddTHH:mm:ssZ').format(DateTime.now()),
          "propertyPrice": double.parse(propertyPriceController.text),
          "propertyStatus": propertyStatus.value,
          "propertyType": propertyType.value,
          "bedrooms": int.parse(propertyBedRoomsController.text),
          "bathrooms": int.parse(propertyBathRoomsController.text),
          "area": int.parse(propertyAreaController.text),
          "propertyBio": propertyBioController.text,
          "propertyVideo": propertyVideoUrl.text,
          "propertyImages": propertyImageList.map((e) => e.toString()).toList(),
          "propertyDocuments": documentUrl.text,
          "locationUrl": propertyPropertyLocationController.text,
          "propertyLocation": {
            "latitude": 0.0,
            "longitude": 0.0,
          },
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.snackbar('Success', 'Property added successfully');
        Get.to(() => LandLordProperties());
      } else {
        Get.snackbar('Error', 'Failed to add property');
        printInfo(info: response.body);
      }
      isLoading.value = false;
    } catch (e) {
      Get.snackbar('Error', 'An error occurred while adding property: $e');
      printInfo(info: 'Error: $e');
      isLoading.value = false;
    }
  }
}
