import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

class ProfileImageFilePicker extends StatelessWidget {
  ProfileImageFilePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandLordProfileInformationControllerClass>(
      init: LandLordProfileInformationControllerClass(),
      builder: (controller) => Column(
        children: [
          InkWell(
            onTap: () {
              controller.pickImage();
            },
            child: Container(
              width: 150.r,
              height: 150.r,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                // image: imageFile != null
                //     ? DecorationImage(
                //         image: MemoryImage(Uint8List.fromList(imageFile!.bytes!)),
                //         fit: BoxFit.cover,
                //       )
                //     : null,
              ),
              child: controller.imageUrl == null || controller.imageUrl!.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 15.sp,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "Upload Your Image",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: Image.network(
                        controller.imageUrl!,
                        fit: BoxFit.cover,
                        width: 150.r,
                        height: 150.r,
                      ),
                    ),
            ),
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
