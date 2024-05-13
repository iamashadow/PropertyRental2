import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Page3/Land_Lord_Property_Add/land_lord_property_add_controller.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text_form_field.dart';
import 'package:property_rental_2/Utils/All_List/all_list.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import '../../../../../../../Utils/Model/property_approve_request_to_admin_model.dart';
import '../../../../../../../Utils/universal_controller.dart';

class AddProperty extends StatelessWidget {
  AddProperty({super.key});

  var radioController = Get.put(UniversalControllerClass());

  var propertyAddingLandLordController = Get.put(LandLordPropertyAddController());

  var propertyPic = "https://plus.unsplash.com/premium_photo-1661963209358-0f4d5f509d10?q=80&w=2014&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 100.w, right: 100.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //Property Images
          InkWell(
            onTap: (){
              // propertyAddingLandLordController.webImagePicker();


            },
            child: Container(
              width: double.maxFinite,
              height: 100.h,
              color: Colors.blue.shade100,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.image),
                    CustomText(
                      title: "Upload minimum 10 images",
                      fontWeight: FontWeight.w500,
                      fontSize: 3.sp,
                    ),
                    // Image.file(propertyAddingLandLordController.files.first),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h,),


          //Property Name
          CustomTextFormField(
            labelText: "Property Name",
            controller: propertyAddingLandLordController.propertyNameController,
          ),
          SizedBox(height: 10.h,),

          //Property Price
          CustomTextFormField(
            labelText: "Property Price",
            controller: propertyAddingLandLordController.propertyPriceController,
          ),
          SizedBox(height: 10.h,),

          //Property Uploading Date
          CustomTextFormField(
            labelText: "Property Uploading Date",
            controller: propertyAddingLandLordController.propertyUploadDateController,
          ),
          SizedBox(height: 10.h,),

          //Select Property Status
          CustomText(
            title: "Select property status",
            fontWeight: FontWeight.w500,
          ),


          //Property Status
          Obx(
              () => RadioListTile(
                  value: 1,
                  groupValue: radioController.propertyStatusRadioGroupValue.value,
                  title: CustomText(
                    title: "Rented",
                    fontWeight: FontWeight.w500,
                  ),
                  onChanged: (value){
                    radioController.propertyStatusRadioGroupValue.value = value!;
                  }
              ),
          ),
          SizedBox(height: 10.h,),

          //Property Status
          Obx(
              () => RadioListTile(
                  value: 2,
                  groupValue: radioController.propertyStatusRadioGroupValue.value,
                  title: CustomText(
                    title: "Available",
                    fontWeight: FontWeight.w500,
                  ),
                  onChanged: (value){
                    radioController.propertyStatusRadioGroupValue.value = value!;
                  }
              ),
          ),
          SizedBox(height: 10.h,),

          //Select Property Type
          CustomText(
            title: "Select property type",
            fontWeight: FontWeight.w500,
          ),


          //Property Type
          Obx(
                () => RadioListTile(
                value: 1,
                groupValue: radioController.propertyTypeRadioGroupValue.value,
                title: CustomText(
                  title: "Flat",
                  fontWeight: FontWeight.w500,
                ),
                onChanged: (value){
                  radioController.propertyTypeRadioGroupValue.value = value!;
                }
            ),
          ),
          SizedBox(height: 10.h,),

          //Property Type
          Obx(
                () => RadioListTile(
                value: 2,
                groupValue: radioController.propertyTypeRadioGroupValue.value,
                title: CustomText(
                  title: "Home",
                  fontWeight: FontWeight.w500,
                ),
                onChanged: (value){
                  radioController.propertyTypeRadioGroupValue.value = value!;
                }
            ),
          ),
          SizedBox(height: 10.h,),

          //Property Bedrooms
          CustomTextFormField(
            labelText: "Property Bedrooms",
            controller: propertyAddingLandLordController.propertyBedRoomsController,
          ),
          SizedBox(height: 10.h,),

          //Property Bathrooms
          CustomTextFormField(
            labelText: "Property Bathrooms",
            controller: propertyAddingLandLordController.propertyBathRoomsController,
          ),
          SizedBox(height: 10.h,),

          //Property Area
          CustomTextFormField(
            labelText: "Property Area",
            controller: propertyAddingLandLordController.propertyAreaController,
          ),
          SizedBox(height: 10.h,),

          //Property Price
          CustomTextFormField(
            labelText: "Property Bio",
            maxLines: 5,
            controller: propertyAddingLandLordController.propertyBioController,
          ),
          SizedBox(height: 10.h,),

          Center(
            child: CustomButton(
              fontSize: 3.sp,
              fontWeight: FontWeight.w500,
              fontColor: ColorManager.whiteColor,
              buttonColor: ColorManager.kasmiriBlue,
              buttonHeight: 30.h,
              buttonWidth: 100.w,
              buttonTitle: "Upload Property",
              buttonRadius: 10.r,
              onTap: (){
                var newProperty = PropertyApproveRequestToAdminModel(
                  propertyImage: propertyPic,
                  propertyName: propertyAddingLandLordController.propertyNameController.text,
                  propertyPrice: propertyAddingLandLordController.propertyPriceController.text,
                  posetingDate: propertyAddingLandLordController.propertyUploadDateController.text,
                  bedRooms: propertyAddingLandLordController.propertyBedRoomsController.text,
                  bathRooms: propertyAddingLandLordController.propertyBathRoomsController.text,
                  propertyArea: propertyAddingLandLordController.propertyAreaController.text,
                  propertyType: radioController.propertyTypeRadioGroupValue.value.toString(),
                  propertyStatus: radioController.propertyStatusRadioGroupValue.value.toString(),
                  prpertyBio: propertyAddingLandLordController.propertyBioController.text,
                );

                AllList.propertyApproveRequestListToAdmin.add(newProperty);

                print(newProperty.propertyImage);
                print(newProperty.propertyName);
                print(newProperty.propertyPrice);
                print(newProperty.posetingDate);
                print(newProperty.bedRooms);
                print(newProperty.bathRooms);
                print(newProperty.propertyArea);
                print(newProperty.propertyType);
                print("INdedx : ${AllList.propertyApproveRequestListToAdmin.length}");
              },
            ),
          ),
          SizedBox(height: 10.h,),

        ],
      ),
    );
  }

}