import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';

class LandLordPropertyAddController extends GetxController {
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
  List<File> files = [];

  var propertyImageList = [].obs;
  // var propertyImageList = <File>[].obs;

  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  Future<void> uploadPropertyImage() async {
    String? image = await landLordProfileInformationControllerClass.pickImage();
    if (image != null) {
      propertyImageList.add(image);
    }
    printInfo(info: "length of the image list ${propertyImageList.length}");
  }



}
