import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../../../../Universal_Widgets/custom_button.dart';
import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../controller/land_lord_profile_information_controller.dart';

class NidFrontImageUpload extends StatelessWidget {
  const NidFrontImageUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandLordProfileInformationControllerClass>(
      init: LandLordProfileInformationControllerClass(),
      builder: (controller) => Column(
        children: [
          InkWell(
            onTap: controller.isTextEditingFieldEditable.value ? () async {
              controller.NidFrontImageUrl = await controller.pickImage();
              controller.update();
            } : null,
            child: Container(
              // width: 150.w,
              height: 200.h,
              decoration: BoxDecoration(
                color: ColorManager.kasmiriBlue.withOpacity(0.1),
                border: Border.all(
                  color: ColorManager.kasmiriBlue
                )
              ),
              child: controller.NidFrontImageUrl == null || controller.NidFrontImageUrl!.isEmpty
                  ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 15.sp,
                      color: ColorManager.kasmiriBlue,
                    ),
                    SizedBox(height: 5.h),
                    const Text(
                      "Upload Your NID Front Image",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              )
                  : Container(
                height: 200.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorManager.greenColor,
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                    image: NetworkImage(controller.NidFrontImageUrl!,)
                  )
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          // if (controller.imageFile != null)
          //   CustomButton(
          //     buttonWidth: 50.w,
          //     buttonHeight: 30.h,
          //     buttonRadius: 10.r,
          //     buttonTitle: "Upload NID Picture",
          //     buttonColor: ColorManager.kasmiriBlue,
          //     fontWeight: FontWeight.w500,
          //     fontSize: 4.sp,
          //     onTap: () {},
          //     fontColor: Colors.white,
          //   ),
        ],
      ),
    );
  }
}

//
// ClipRRect(
// borderRadius: BorderRadius.circular(10.r),
// child: Image.network(
//
//
// // width: 150.w,
// height: 150.h,
// ),
// )