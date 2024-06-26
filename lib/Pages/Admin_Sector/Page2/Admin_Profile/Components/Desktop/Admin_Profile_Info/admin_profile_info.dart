import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/Admin_Sector/admin_controller_class.dart';

import '../../../../../../../Universal_Widgets/custom_text_form_field.dart';
import '../../../../../../LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/Components/Desktop_Components/Profile_Image_File_Picker/profile_image_file_picker.dart';

class AdminProfileInfoDesktop extends StatefulWidget {
  const AdminProfileInfoDesktop({super.key});

  @override
  State<AdminProfileInfoDesktop> createState() =>
      _AdminProfileInfoDesktopState();
}

class _AdminProfileInfoDesktopState extends State<AdminProfileInfoDesktop> {
  final AdminControllerClass controller = Get.put(AdminControllerClass());

  @override
  void initState() {
    controller.getAdminProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 100.w, right: 100.w),
      child: Column(
        children: [
          // ProfileImageFilePicker(loginPageControllerClassInistance: ,),
          SizedBox(
            height: 10.h,
          ),

          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(onPressed: () {}, child: Text("Edit")),
          ),
          SizedBox(
            height: 10.h,
          ),

          //Name
          CustomTextFormField(
            controller: controller.adminNameController,
            labelText: "Enter Your Name",
          ),
          SizedBox(
            height: 10.h,
          ),

          //Mobile Number
          CustomTextFormField(
            controller: controller.adminMobileController,
            labelText: "Enter Your Mobile Number",
          ),
          SizedBox(
            height: 10.h,
          ),

          //Email
          CustomTextFormField(
            controller: controller.adminEmailController,
            labelText: "Your Email",
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
