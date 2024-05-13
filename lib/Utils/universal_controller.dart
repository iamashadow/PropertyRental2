import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/land_lord_profile_information_page.dart';

class UniversalControllerClass extends GetxController{

  RxBool isUserLogedIn = false.obs;

  RxInt propertyStatusRadioGroupValue = 1.obs;
  RxInt propertyTypeRadioGroupValue = 1.obs;

  String generateRandomNumber() {
    final Random random = Random();
    String randomNumber = '';

    for (int i = 0; i < 10; i++) {
      randomNumber += random.nextInt(10).toString();
    }

    return randomNumber;
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void submitForm(){
    if(formKey.currentState!.validate()){
      Get.to(LandLordProfileInformationPage());
    }
  }

  String? validateEmail (value){
    if(value!.isEmpty){
      return "Please enter an email";
    }

    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return "Please enter a valid email";
    }
    return null;

  }

}