import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/Components/Desktop_Components/Nid_Front_Image_Upload/nid_image_upload.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';
import 'package:property_rental_2/Pages/Login_Page/login_page_controller.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text_form_field.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import '../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_Components/Nid_Back_Part_Image/nid_back_part_image.dart';
import '../../Components/Desktop_Components/Profile_Image_File_Picker/profile_image_file_picker.dart';

class LandLordProfileInformationDesktop extends StatefulWidget {
  const LandLordProfileInformationDesktop({super.key});

  @override
  State<LandLordProfileInformationDesktop> createState() =>
      _LandLordProfileInformationDesktopState();
}

class _LandLordProfileInformationDesktopState
    extends State<LandLordProfileInformationDesktop> {
  // FilePickerResult? filePickerResult;
  final LandLordProfileInformationControllerClass landLordProfileController =
      Get.find();
  final LoginPageControllerClass loginPageController = Get.find();

  @override
  void initState() {
    landLordProfileController.getLandLordProfile();
    super.initState();
  }

  // void restoreData() {
  //   if (loginPageController.userData.account != null) {
  //     landLordProfileController.landLordNameController.text = loginPageController.userData.account?.name ?? '';
  //     landLordProfileController.landLordEmailController.text = loginPageController.userData.account?.email ?? '';
  //     landLordProfileController.landLordMobileNumberController.text = loginPageController.userData.account?.mobileNumber ?? '';
  //     landLordProfileController.landLordWhatsAppNumberController.text = loginPageController.userData.account?.whatsAppNumber ?? '';
  //     landLordProfileController.landLordOfficeNumberController.text = loginPageController.userData.account?.officeNumber ?? '';
  //     landLordProfileController.landLordNationalityController.text = loginPageController.userData.account?.nationality ?? '';
  //     landLordProfileController.landLordBioController.text = loginPageController.userData.account?.bio ?? '';
  //     landLordProfileController.ProfileImage = loginPageController.userData.account?.profileImage?? '';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    print("profileImage Values : ${landLordProfileController.ProfileImage}");
    print(
        "name Values : ${landLordProfileController.landLordNameController.text}");
    print(
        "bio Values : ${landLordProfileController.landLordBioController.text}");
    print(
        "mobileNumber Values : ${landLordProfileController.landLordMobileNumberController.text}");
    print(
        "officeNumber Values : ${landLordProfileController.landLordOfficeNumberController.text}");
    print(
        "whatsAppNumber Values : ${landLordProfileController.landLordWhatsAppNumberController.text}");
    print(
        "email Values : ${landLordProfileController.landLordEmailController.text}");
    print(
        "dateOfBirth Values : ${landLordProfileController.selectedDate.text}");
    print(
        "nationality Values : ${landLordProfileController.landLordNationalityController.text}");
    print(
        "nidImageFront Values : ${landLordProfileController.NidFrontImageUrl}");
    print("nidImageBack Values : ${landLordProfileController.NidBackImageUrl}");
    print(
        "verified Values : ${landLordProfileController.account.value?.verified}");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HeadBanner
            SizedBox(
              height: 1.sh * 0.8,
              width: 1.sw,
              child: const HeadBannerSection(),
            ),
            SizedBox(
              height: 1.sh * 0.1,
            ),

            //Upload Profile Image
            // ProfileImageFilePicker(loginPageControllerClassInistance: loginPageController,),
            ProfileImageFilePicker(),
            SizedBox(
              height: 20.h,
            ),

            Align(
              alignment: Alignment.center,
              child: Obx(
                () => CustomText(
                  // title: loginPageController.userData.account?.verified ?? false
                  title: (() {
                    if (landLordProfileController.account.value?.verified ==
                        true) {
                      return "Your profile is verified! You can add properties now.";
                    } else {
                      return "Your profile is not verified yet! Please verify your profile to add properties.";
                    }
                  }()),

                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  fontSize: 3.sp,
                  fontColor: (() {
                    if (landLordProfileController.account.value?.verified ==
                        true) {
                      return ColorManager.greenColor;
                    } else {
                      return ColorManager.redColor;
                    }
                  }()),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            Container(
              margin: EdgeInsets.only(left: 70.w, right: 70.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Obx(
                      () => ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            landLordProfileController
                                    .isTextEditingFieldEditable.value
                                ? Colors.white
                                : Colors.blue,
                          ),
                        ),
                        onPressed: () {
                          // landLordProfileController.isEditButtonPressed != landLordProfileController.isEditButtonPressed;
                          //
                          // if(landLordProfileController.account.value!.verified == false){
                          //   landLordProfileController.isTextEditingFieldEditable = true;
                          // }
                          // else if(landLordProfileController.isEditButtonPressed == true){
                          //   landLordProfileController.isTextEditingFieldEditable =
                          // }
                          // else{
                          //   landLordProfileController.isTextEditingFieldEditable = false;
                          // }

                          landLordProfileController
                                  .isTextEditingFieldEditable.value =
                              !landLordProfileController
                                  .isTextEditingFieldEditable.value;
                        },
                        child: Text(
                          landLordProfileController
                                  .isTextEditingFieldEditable.value
                              ? "Editable Mode"
                              : "Change Profile Info",
                          style: TextStyle(
                              color: landLordProfileController
                                      .isTextEditingFieldEditable.value
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //Name
                  Obx(
                    () => CustomTextFormField(
                      labelText: "Enter Your Name",
                      controller:
                          landLordProfileController.landLordNameController,
                      isEnabled: landLordProfileController
                          .isTextEditingFieldEditable.value,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //Profile Bio
                  Obx(
                    () => CustomTextFormField(
                      labelText: "Say something about you",
                      controller:
                          landLordProfileController.landLordBioController,
                      isEnabled: landLordProfileController
                          .isTextEditingFieldEditable.value,
                      maxLines: 5,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //Mobile Number
                  Obx(
                    () => CustomTextFormField(
                      labelText: "Enter Your Mobile Number",
                      controller: landLordProfileController
                          .landLordMobileNumberController,
                      isEnabled: landLordProfileController
                          .isTextEditingFieldEditable.value,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //WhatsApp Number
                  Obx(
                    () => CustomTextFormField(
                      labelText: "Enter Your WhatsApp Number",
                      controller: landLordProfileController
                          .landLordWhatsAppNumberController,
                      isEnabled: landLordProfileController
                          .isTextEditingFieldEditable.value,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //Office Number
                  Obx(
                    () => CustomTextFormField(
                      labelText: "Enter Your Office Mobile Number",
                      controller: landLordProfileController
                          .landLordOfficeNumberController,
                      isEnabled: landLordProfileController
                          .isTextEditingFieldEditable.value,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //Email
                  CustomTextFormField(
                    labelText: "Your Email",
                    controller: loginPageController.emailController,
                    isEnabled: false,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //Date of Birth
                  CustomText(
                    title: "Select your date of birth",
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //Date of Birth
                  // GetBuilder<LandLordProfileInformationControllerClass>(
                  //   init: LandLordProfileInformationControllerClass(),
                  //   builder: (landLordProfileController) {
                  //     return InkWell(
                  //       onTap: () async {
                  //         DateTime? datePicked = await showDatePicker(
                  //           context: context,
                  //           initialDate: DateTime.now(),
                  //           firstDate: DateTime(1950, 1, 1),
                  //           lastDate: DateTime.now(),
                  //         );
                  //
                  //         if (datePicked != null) {
                  //           landLordProfileController.selectedDate.text = datePicked.toString();
                  //           landLordProfileController.update();
                  //           print(landLordProfileController.selectedDate.value);
                  //         }
                  //       },
                  //       child: landLordProfileController.selectedDate.text != null && landLordProfileController.selectedDate.text != ""
                  //             ? CustomText(
                  //           title: "Date of Birth : ${landLordProfileController.selectedDate.text!.split(' ')[0]}",
                  //           fontColor: ColorManager.kasmiriBlue,
                  //         )
                  //             : Row(
                  //           children: [
                  //             CustomText(
                  //               title: "Date of Birth : ",
                  //               fontColor: ColorManager.kasmiriBlue,
                  //             ),
                  //             Icon(Icons.calendar_month_rounded, color: ColorManager.kasmiriBlue,),
                  //           ],
                  //         ),
                  //
                  //     );
                  //   },
                  // ),

                  GetBuilder<LandLordProfileInformationControllerClass>(
                    init: LandLordProfileInformationControllerClass(),
                    builder: (landLordProfileController) {
                      return Obx(() {
                        if (landLordProfileController
                            .isTextEditingFieldEditable.value) {
                          return InkWell(
                            onTap: () async {
                              DateTime? datePicked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950, 1, 1),
                                lastDate: DateTime.now(),
                              );

                              if (datePicked != null) {
                                String formattedDate =
                                    DateFormat('yyyy-MM-dd').format(datePicked);
                                landLordProfileController.selectedDate.text =
                                    formattedDate;
                                landLordProfileController.update();
                                print(landLordProfileController
                                    .selectedDate.value);
                              }
                            },
                            child: landLordProfileController
                                    .selectedDate.text.isNotEmpty
                                ? CustomText(
                                    title:
                                        "Date of Birth : ${landLordProfileController.selectedDate.text}",
                                    fontColor: ColorManager.kasmiriBlue,
                                  )
                                : Row(
                                    children: [
                                      CustomText(
                                        title: "Date of Birth : ",
                                        fontColor: ColorManager.kasmiriBlue,
                                      ),
                                      Icon(
                                        Icons.calendar_month_rounded,
                                        color: ColorManager.kasmiriBlue,
                                      ),
                                    ],
                                  ),
                          );
                        } else {
                          return landLordProfileController
                                  .selectedDate.text.isNotEmpty
                              ? CustomText(
                                  title:
                                      "Date of Birth : ${landLordProfileController.selectedDate.text}",
                                  fontColor: ColorManager.kasmiriBlue,
                                )
                              : Row(
                                  children: [
                                    CustomText(
                                      title: "Date of Birth : ",
                                      fontColor: ColorManager.kasmiriBlue,
                                    ),
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      color: ColorManager.kasmiriBlue,
                                    ),
                                  ],
                                );
                        }
                      });
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //Nationality
                  Obx(
                    () => CustomTextFormField(
                      labelText: "Enter Your Nationality",
                      controller: landLordProfileController
                          .landLordNationalityController,
                      isEnabled: landLordProfileController
                          .isTextEditingFieldEditable.value,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //NID Upload
                  CustomText(
                    title: "Upload your NID",
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //NID Upload
                  Obx(
                    () => landLordProfileController
                                .isTextEditingFieldEditable.value ==
                            true
                        ? Row(
                            children: [
                              const Expanded(child: NidFrontImageUpload()),
                              SizedBox(
                                width: 10.w,
                              ),
                              const Expanded(child: NidBackPartImage()),
                            ],
                          )
                        : Row(
                            children: [
                              const Expanded(child: NidFrontImageUpload()),
                              SizedBox(
                                width: 10.w,
                              ),
                              const Expanded(child: NidBackPartImage()),
                            ],
                          ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //Save Button
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Obx(
                  //     () {
                  //       print(
                  //           'verifyIsLoading: ${landLordProfileController.verifyIsLoading.value}');
                  //       print(
                  //           'account verified: ${landLordProfileController.account.value?.verified}');
                  //
                  //       return
                  //         landLordProfileController.verifyIsLoading.value
                  //           ? CircularProgressIndicator()
                  //           : CustomButton(
                  //               onTap: () {
                  //                 // loginPageController.userData.account?.verified ?? false
                  //                 landLordProfileController
                  //                             .account.value?.verified ??
                  //                         false
                  //                     ? landLordProfileController
                  //                         .verifyLandLord(
                  //                             isVerifyOrUpdate: false)
                  //                     : landLordProfileController
                  //                         .verifyLandLord(
                  //                             isVerifyOrUpdate: true);
                  //               },
                  //               fontColor: Colors.white,
                  //               fontSize: 4.sp,
                  //               fontWeight: FontWeight.w500,
                  //               buttonColor: ColorManager.kasmiriBlue,
                  //               buttonTitle:
                  //                   // loginPageController.userData.account?.verified ?? false
                  //                   landLordProfileController
                  //                               .account.value?.verified ??
                  //                           false
                  //                       ? "Save & Update"
                  //                       : "Verify Profile",
                  //               buttonRadius: 10.r,
                  //               buttonHeight: 40.h,
                  //               buttonWidth: 30.w,
                  //             );
                  //     },
                  //   ),
                  // ),

                  Align(
                    alignment: Alignment.center,
                    child: Obx(
                      () {
                        print(
                            'verifyIsLoading: ${landLordProfileController.verifyIsLoading.value}');
                        print(
                            'account verified: ${landLordProfileController.account.value?.verified}');

                        // Check if editing field is not editable and avoid rendering the button if false
                        if (!landLordProfileController
                            .isTextEditingFieldEditable.value) {
                          return SizedBox.shrink(); // Return an empty widget
                        }

                        return landLordProfileController.verifyIsLoading.value
                            ? CircularProgressIndicator()
                            : CustomButton(
                                onTap: () {
                                  bool isVerified = landLordProfileController
                                          .account.value?.verified ??
                                      false;
                                  landLordProfileController.verifyLandLord(
                                    isVerifyOrUpdate: !isVerified,
                                  );
                                },
                                fontColor: Colors.white,
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w500,
                                buttonColor: ColorManager.kasmiriBlue,
                                buttonTitle: landLordProfileController
                                            .account.value?.verified ??
                                        false
                                    ? "Save & Update"
                                    : "Verify Profile",
                                buttonRadius: 10.r,
                                buttonHeight: 40.h,
                                buttonWidth: 30.w,
                              );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),

            //WebFooter Area
            Container(
              width: 1.sw,
              height: 1.sh * 0.6,
              color: const Color(0xFF303030),
              child: const FooterAreaDesktop(),
            ),
          ],
        ),
      ),
    );
  }
}
