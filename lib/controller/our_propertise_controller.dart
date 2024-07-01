import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Universal_Widgets/custom_toast.dart';
import 'package:property_rental_2/Utils/Model/property_approve_request_to_admin_model.dart';
import 'package:http/http.dart' as http;
import 'package:property_rental_2/Utils/constant.dart';

class OurPropertiseController extends GetxController {
  var isLoading = false.obs;
  Rxn<List<PropertyInfo>> allOpenProperties = Rxn<List<PropertyInfo>>();
  Rxn<List<PropertyInfo>> landLordProperties = Rxn<List<PropertyInfo>>();
  Rxn<List<PropertyInfo>> adminPropertise = Rxn<List<PropertyInfo>>();
  Rxn<PropertyResponseMOdel> propertyResponseMOdel =
      Rxn<PropertyResponseMOdel>();
  @override
  void onInit() {
    getOpenPropertise();
    super.onInit();
  }

  Future<void> getOpenPropertise() async {
    try {
      isLoading.value = true;
      final response = await http.get(
          Uri.parse(
              'https://property-rental-backend-ashen.vercel.app/api/v1/open/properties/'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $tokenValue',
          });
      PropertyResponseMOdel propertyResponseMOdel =
          propertyResponseMOdelFromJson(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        allOpenProperties.value = propertyResponseMOdel.data;
      } else {
        printInfo(info: propertyResponseMOdel.message.toString());
      }
      printInfo(
          info: "All Open Properties: ${allOpenProperties.value!.length}");
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      printInfo(info: e.toString());
    }
  }

  Future<void> getLandLordPropertise() async {
    try {
      isLoading.value = true;
      final response = await http.get(
          Uri.parse(
              'https://property-rental-backend-ashen.vercel.app/api/v1/landlord/properties/'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $tokenValue',
          });
      PropertyResponseMOdel propertyResponseMOdel =
          propertyResponseMOdelFromJson(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        landLordProperties.value = propertyResponseMOdel.data;
      } else {
        printInfo(info: propertyResponseMOdel.message.toString());
      }
      printInfo(
          info: "LandLord Properties: ${landLordProperties.value!.length}");
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      printInfo(info: e.toString());
    }
  }

  Future<void> getAdminPropertise() async {
    try {
      isLoading.value = true;
      final response = await http.get(
          Uri.parse(
              'https://property-rental-backend-ashen.vercel.app/api/v1/admin/properties/'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $tokenValue',
          });
      propertyResponseMOdel.value =
          propertyResponseMOdelFromJson(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        adminPropertise.value = propertyResponseMOdel.value!.data;
      } else {
        printInfo(info: propertyResponseMOdel.value!.message.toString());
      }
      isLoading.value = false;
      printInfo(
          info:
              "Admin Properties...........: ${adminPropertise.value!.length}");
    } catch (e) {
      isLoading.value = false;
      printInfo(info: e.toString());
    }
  }

  Future<void> propertyApproval(String propertyId) async {
    try {
      isLoading.value = true;
      final response = await http.patch(
          Uri.parse(
              'https://property-rental-backend-ashen.vercel.app/api/v1/admin/properties/$propertyId/verify'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $tokenValue',
          });
      if (response.statusCode == 200 || response.statusCode == 201) {
        printInfo(info: "Property Approved");
        getAdminPropertise();
        Get.snackbar(
          "Property Approval",
          "Property Approved",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
          duration: Duration(seconds: 5),
        );
      } else {
        printInfo(info: "Property Approval Failed");
      }
      isLoading.value = false;
    } catch (e) {
      printInfo(info: e.toString());
      isLoading.value = false;
    }
  }
}
