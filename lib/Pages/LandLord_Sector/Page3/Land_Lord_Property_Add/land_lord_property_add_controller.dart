import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';

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

  List<File> files = [];
  var uploadingImage = false.obs;

  var propertyImageList = [].obs;
  // var propertyImageList = <File>[].obs;

  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  Future<void> uploadPropertyImage() async {
    uploadingImage.value = true;
    String? image = await landLordProfileInformationControllerClass.pickImage();
    if (image != null) {
      propertyImageList.add(image);
    }
    printInfo(info: "length of the image list ${propertyImageList.length}");
    uploadingImage.value = false;
  }


  Future<void> uploadFile() async {
    try {
      // Ensure the user is authenticated

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
          // Upload file to Firebase Storage
          final Reference storageReference = FirebaseStorage.instance.ref().child('uploads/$fileName');
          final UploadTask uploadTask = storageReference.putData(fileBytes);

          final TaskSnapshot taskSnapshot = await uploadTask;
          final String downloadURL = await taskSnapshot.ref.getDownloadURL();

          // Use the download URL
          print('File uploaded successfully: $downloadURL');
          Get.snackbar('Success', 'File uploaded successfully: $downloadURL');
        }
      } else {
        // User canceled the picker
        Get.snackbar('Error', 'No file selected');
      }
    } catch (e) {
      // Handle errors
      Get.snackbar('Error', 'An error occurred while uploading the file: $e');
      printInfo(info: "'Error', 'An error occurred while uploading the file: $e'");
    }
  }


}
