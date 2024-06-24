import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../../../Login_Page/login_page_controller.dart';

class ProfileImageFilePicker extends StatelessWidget {

  // final LoginPageControllerClass loginPageControllerClassInistance;

  ProfileImageFilePicker({super.key,
    // required this.loginPageControllerClassInistance,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandLordProfileInformationControllerClass>(
      init: LandLordProfileInformationControllerClass(),
      builder: (controller) => Column(
        children: [
          InkWell(
            onTap: () async {

              controller.ProfileImage = await controller.pickImage();
              controller.update();
            },
            child: Obx(()=> Container(
              width: 150.r,
              height: 150.r,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                // image: imageFile != null
                //     ? DecorationImage(
                //         image: MemoryImage(Uint8List.fromList(imageFile!.bytes!)),
                //         fit: BoxFit.cover,
                //       )
                //     : null,
              ),
              child: ((){
                if(controller.imageIsUploadingtoServer.value){
                  return CircularProgressIndicator();
                }
                else if(controller.ProfileImage == null || controller.ProfileImage!.isEmpty){
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          size: 15.sp,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5.h),
                        const Text(
                          "Upload Your Image",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }
                else{
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(100.r),
                    child: Image.network(
                      controller.ProfileImage!,
                      fit: BoxFit.cover,
                      width: 150.r,
                      height: 150.r,
                    ),
                  );
                }
              }())

              // loginPageControllerClassInistance.userData.account?.profileImage != null || loginPageControllerClassInistance.userData.account!.profileImage!.isNotEmpty?
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(100.r),
              //   child: Image.network(
              //     loginPageControllerClassInistance.userData.account!.profileImage!,
              //     fit: BoxFit.cover,
              //     width: 150.r,
              //     height: 150.r,
              //   ),
              // ) :


            )),
          ),
          SizedBox(
            height: 10.h,
          ),
          if (controller.imageFile != null)
            CustomButton(
              buttonWidth: 50.w,
              buttonHeight: 30.h,
              buttonRadius: 10.r,
              buttonTitle: "Upload Profile Picture",
              buttonColor: ColorManager.kasmiriBlue,
              fontWeight: FontWeight.w500,
              fontSize: 4.sp,
              onTap: () {},
              fontColor: Colors.white,
            ),
        ],
      ),
    );
  }
}
