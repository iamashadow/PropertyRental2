import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Page3/Land_Lord_Property_Add/land_lord_property_add_controller.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text_form_field.dart';
import 'package:property_rental_2/Utils/All_List/all_list.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import '../../../../../../../Utils/Model/property_approve_request_to_admin_model.dart';
import '../../../../../../../Utils/universal_controller.dart';

class AddProperty extends StatelessWidget {
  AddProperty({super.key});

  final radioController = Get.put(UniversalControllerClass());
  final LandLordProfileInformationControllerClass
      landLordProfileInformationControllerClass =
      Get.find<LandLordProfileInformationControllerClass>();

  final LandLordPropertyAddController propertyAddingLandLordController =
      Get.find<LandLordPropertyAddController>();

  final propertyPic =
      "https://plus.unsplash.com/premium_photo-1661963209358-0f4d5f509d10?q=80&w=2014&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 80.w, right: 80.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Property Images
          InkWell(
            onTap: () {
              propertyAddingLandLordController.uploadPropertyImage();
            },
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 180.w,
                    height: 100.h,
                    color: Colors.blue.shade100,
                    child: Center(
                      child: propertyAddingLandLordController
                              .propertyImageList.isNotEmpty
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: List.generate(
                                  propertyAddingLandLordController
                                      .propertyImageList.length, (index) {
                                return Stack(
                                  children: [
                                    Image.network(
                                      propertyAddingLandLordController
                                          .propertyImageList[index],
                                      fit: BoxFit.fill,
                                      height: 100.h,
                                      width: 18.w,
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.cancel,
                                            color: Colors.red),
                                        onPressed: () {
                                          propertyAddingLandLordController
                                              .propertyImageList
                                              .removeAt(index);
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.image),
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
                  SizedBox(
                    width: 5.w,
                  ),
                  if (propertyAddingLandLordController.uploadingImage.value)
                    const CircularProgressIndicator()
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Name
          CustomText(
            title: "What is the property name?",
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Name
          CustomTextFormField(
            labelText: "Property Name",
            controller: propertyAddingLandLordController.propertyNameController,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Rent Price
          CustomText(
            title: "How much is the rent?",
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Price
          CustomTextFormField(
            labelText: "Property Price",
            controller:
                propertyAddingLandLordController.propertyPriceController,
          ),
          SizedBox(
            height: 10.h,
          ),

          // //Property Uploading Date
          // CustomTextFormField(
          //   labelText: "Property Uploading Date",
          //   controller:
          //       propertyAddingLandLordController.propertyUploadDateController,
          // ),
          // SizedBox(
          //   height: 10.h,
          // ),

          //Date of Birth
          CustomText(
            title:
                "Property Uploading Date ${DateTime.now().toLocal().toString().split(' ')[0]}",
          ),
          SizedBox(
            height: 10.h,
          ),

          // //Selecte Date of Birth
          // Row(
          //   children: [
          //     CustomText(
          //       title: "Date of Birth : ",
          //       fontColor: ColorManager.kasmiriBlue,
          //     ),
          //     const Icon(Icons.calendar_month_rounded)
          //   ],
          // ),
          // SizedBox(
          //   height: 10.h,
          // ),

          //Selecte Date of Birth
          // InkWell(
          //   onTap: () async {
          //     DateTime? datePicked = await showDatePicker(
          //       context: context,
          //       initialDate: DateTime.now(),
          //       firstDate: DateTime(1950, 1, 1),
          //       lastDate: DateTime.now(),
          //     );
          //
          //     if (datePicked != null) {
          //       propertyAddingLandLordController.selectedDate.value =
          //           datePicked;
          //     }
          //   },
          //   child: Obx(() =>
          //   propertyAddingLandLordController.selectedDate.value != null
          //       ? CustomText(
          //     title:
          //     "Date of Birth : ${propertyAddingLandLordController.selectedDate.value!.toLocal().toString().split(' ')[0]}", // Displaying date in YYYY-MM-DD format
          //     fontColor: ColorManager.kasmiriBlue,
          //   )
          //       : Row(
          //     children: [
          //       CustomText(
          //         title: "Date of Birth : ",
          //         fontColor: ColorManager.kasmiriBlue,
          //       ),
          //       const Icon(Icons.calendar_month_rounded),
          //     ],
          //   ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10.h,
          // ),

          ///

          //Select Property Status
          CustomText(
            title: "Select property status",
            fontWeight: FontWeight.bold,
            fontSize: 3.sp,
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
                onChanged: (value) {
                  radioController.propertyStatusRadioGroupValue.value = value!;
                  propertyAddingLandLordController.propertyStatus.value =
                      "Rented";
                }),
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Status
          Obx(
            () => RadioListTile(
                value: 2,
                groupValue: radioController.propertyStatusRadioGroupValue.value,
                title: CustomText(
                  title: "Available",
                  fontWeight: FontWeight.w500,
                ),
                onChanged: (value) {
                  radioController.propertyStatusRadioGroupValue.value = value!;
                  propertyAddingLandLordController.propertyStatus.value =
                      "Available";
                }),
          ),
          SizedBox(
            height: 10.h,
          ),

          //Select Property Type
          CustomText(
            title: "Select property type",
            fontWeight: FontWeight.bold,
            fontSize: 3.sp,
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
                onChanged: (value) {
                  radioController.propertyTypeRadioGroupValue.value = value!;
                  propertyAddingLandLordController.propertyType.value = "Flat";
                }),
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Type
          Obx(
            () => RadioListTile(
                value: 2,
                groupValue: radioController.propertyTypeRadioGroupValue.value,
                title: CustomText(
                  title: "House",
                  fontWeight: FontWeight.w500,
                ),
                onChanged: (value) {
                  radioController.propertyTypeRadioGroupValue.value = value!;
                  propertyAddingLandLordController.propertyType.value = "House";
                }),
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Bedrooms
          CustomText(
            title: "How many bedrooms?",
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Bedrooms
          CustomTextFormField(
            labelText: "Property Bedrooms",
            controller:
                propertyAddingLandLordController.propertyBedRoomsController,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Bathrooms
          CustomText(
            title: "How many bathrooms?",
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Bathrooms
          CustomTextFormField(
            labelText: "Property Bathrooms",
            controller:
                propertyAddingLandLordController.propertyBathRoomsController,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Area
          CustomText(
            title: "Total Property Area",
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Area
          CustomTextFormField(
            labelText: "Property Area",
            controller: propertyAddingLandLordController.propertyAreaController,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Bio
          CustomText(
            title: "Say something about your property",
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Bio
          CustomTextFormField(
            labelText: "Property Bio",
            maxLines: 5,
            controller: propertyAddingLandLordController.propertyBioController,
          ),
          SizedBox(
            height: 10.h,
          ),

          CustomText(
            title: "Property Location Google Map Link",
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.h,
          ),

          CustomTextFormField(
            labelText: "Property location google map link",
            controller: propertyAddingLandLordController
                .propertyPropertyLocationController,
          ),
          SizedBox(
            height: 10.h,
          ),

          //Property Documents
          InkWell(
            onTap: () async {
              propertyAddingLandLordController.documentUrl.text =
                  await propertyAddingLandLordController.uploadFile() ?? "";
            },
            child: AbsorbPointer(
              child: CustomTextFormField(
                labelText: "Property Documents",
                controller: propertyAddingLandLordController.documentUrl,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),

          InkWell(
            onTap: () async {
              propertyAddingLandLordController.propertyVideoUrl.text =
                  await propertyAddingLandLordController.uploadFile() ?? "";
            },
            child: AbsorbPointer(
              child: CustomTextFormField(
                labelText: "Property Video Link",
                controller: propertyAddingLandLordController.propertyVideoUrl,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),

          //Button
          Center(
            child: Obx(
              () => propertyAddingLandLordController.isLoading.value
                  ? CircularProgressIndicator()
                  : CustomButton(
                      fontSize: 3.sp,
                      fontWeight: FontWeight.w500,
                      fontColor: ColorManager.whiteColor,
                      buttonColor: ColorManager.kasmiriBlue,
                      buttonHeight: 30.h,
                      buttonWidth: 100.w,
                      buttonTitle: "Upload Property",
                      buttonRadius: 10.r,
                      onTap: () {
                        propertyAddingLandLordController.addProperty();
                      },
                    ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
