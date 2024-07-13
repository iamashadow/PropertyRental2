import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:property_rental_2/Pages/Home_Page/Components/Desktop_Component/My_Drawer/my_drawer.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/Components/Desktop_Components/Profile_Image_File_Picker/profile_image_file_picker.dart';
import 'package:property_rental_2/Pages/User_Section/controller/user_controller.dart';
import '../../../Universal_Widgets/custom_button.dart';
import '../../../Universal_Widgets/custom_text.dart';
import '../../../Universal_Widgets/custom_text_form_field.dart';
import '../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../Utils/Color_Manager/colo_manager.dart';
import '../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/Components/Desktop_Components/Nid_Back_Part_Image/nid_back_part_image.dart';
import '../../LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/Components/Desktop_Components/Nid_Front_Image_Upload/nid_image_upload.dart';
import '../../LandLord_Sector/controller/land_lord_profile_information_controller.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final UserController controller = Get.find();
  final LandLordProfileInformationControllerClass landLordProfileController = Get.find();
  @override
  void initState() {
    controller.getMainUserProfile();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //HeadBanner
              Container(
                height: 1.sh * 0.3,
                width: 1.sw,
                color: Colors.deepPurpleAccent.shade100,
                child: Center(
                  child: CustomText(
                    title: "User Profile",
                    fontWeight: FontWeight.bold,
                    fontColor: Colors.white,
                    fontSize: 5.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 1.sh * 0.1,
              ),

              //Upload Profile Image
              ProfileImageFilePicker(),
              // InkWell(
              //   onTap: (){},
              //   child: Container(
              //     height: 1.sh*0.2,
              //     width: 1.sw*0.2,
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: Colors.red.shade50,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20.h,
              ),

              Align(
                alignment: Alignment.center,
                child: Obx(
                      () => CustomText(
                    // title: loginPageController.userData.account?.verified ?? false
                    title: (() {
                      if (controller.userData.value?.verified ==
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
                      if (controller.userData.value?.verified ==
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
                              controller
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

                            controller
                                .isTextEditingFieldEditable.value =
                            !controller
                                .isTextEditingFieldEditable.value;
                          },
                          child: Text(
                            controller

                                .isTextEditingFieldEditable.value
                                ? "Editable Mode"
                                : "Change Profile Info",
                            style: TextStyle(
                                color: controller
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
                      ()=> CustomTextFormField(
                        isEnabled: controller.isTextEditingFieldEditable.value,
                        controller: controller.userNameController,
                        labelText: "Enter Your Name",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    //Date Of Birth
                GetBuilder<UserController>(
                  init: UserController(),
                  builder: (userController) {
                    return Obx(() {
                      if (userController.isTextEditingFieldEditable.value) {
                        return InkWell(
                          onTap: () async {
                            DateTime? datePicked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950, 1, 1),
                              lastDate: DateTime.now(),
                            );

                            if (datePicked != null) {
                              String formattedDate = DateFormat('yyyy-MM-dd').format(datePicked);
                              userController.selectedDate.text = formattedDate;
                              userController.update();
                              print(userController.selectedDate.text);
                            }
                          },
                          child: userController.selectedDate.text.isNotEmpty
                              ? CustomText(
                            title: "Date of Birth : ${userController.selectedDate.text}",
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
                        return userController.selectedDate.text.isNotEmpty
                            ? CustomText(
                          title: "Date of Birth : ${userController.selectedDate.text}",
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

                    //Email
                    Obx(
                      ()=> CustomTextFormField(
                        isEnabled: controller.isTextEditingFieldEditable.value,
                        controller: controller.userEmailController,
                        labelText: "Your Email",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    //Nationality
                    Obx(
                      ()=> CustomTextFormField(
                        isEnabled: controller.isTextEditingFieldEditable.value,
                        controller: controller.userNationalityController,
                        labelText: "Enter Your Nationality",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    //Nationality
                    Obx(
                      ()=> CustomTextFormField(
                        isEnabled: controller.isTextEditingFieldEditable.value,
                        controller: controller.userMobileNumberController,
                        labelText: "Enter Your Mobile Number",
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
                    // Obx(
                    //     () => controller
                    //         .isTextEditingFieldEditable.value ==
                    //         true ?
                    //         Row(
                    //           children: [
                    //             const Expanded(child: UserNidFrontImage()),
                    //             SizedBox(
                    //               width: 10.w,
                    //             ),
                    //             const Expanded(child: UserNidBackImage()),
                    //           ],
                    //         ) : Row(
                    //       children: [
                    //         const Expanded(child: UserNidFrontImage()),
                    //         SizedBox(
                    //           width: 10.w,
                    //         ),
                    //         const Expanded(child: UserNidBackImage()),
                    //       ],
                    //     ),
                    // ),
                    //NID Upload
                    Obx(
                          () => controller
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


                    //Submit Button
                    Align(
                      alignment: Alignment.center,
                      child: Obx(
                            () {
                          print(
                              'verifyIsLoading: ${controller.verifyIsLoading.value}');
                          print(
                              'account verified: ${controller.userData.value?.verified}');

                          // Check if editing field is not editable and avoid rendering the button if false
                          if (!controller
                              .isTextEditingFieldEditable.value) {
                            return SizedBox.shrink(); // Return an empty widget
                          }

                          return controller.verifyIsLoading.value
                              ? CircularProgressIndicator()
                              : CustomButton(
                            onTap: () {
                              bool isVerified = controller.userData.value?.verified ??
                                  false;
                              controller.verifyLandLord(
                                isVerifyOrUpdate: !isVerified,
                              );
                            },
                            fontColor: Colors.white,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.w500,
                            buttonColor: ColorManager.kasmiriBlue,
                            buttonTitle: controller.userData.value?.verified ??
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
      ),
    );
  }
}
