
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LandLordPropertyAddController extends GetxController{
  var propertyNameController = TextEditingController();
  var propertyPriceController = TextEditingController();
  var propertyUploadDateController = TextEditingController();
  var propertyIdController = TextEditingController();
  var propertyBedRoomsController = TextEditingController();
  var propertyBathRoomsController = TextEditingController();
  var propertyAreaController = TextEditingController();
  var propertyBioController = TextEditingController();
  List<File> files = [] ;

  // Future<void> webImagePicker ()async{
  //   FilePickerResult? result = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['jpg', 'png',],
  //   );
  //
  //
  //   if(result!= null){
  //     print(result);
  //     files.addAll(result);
  //   }
  // }

}