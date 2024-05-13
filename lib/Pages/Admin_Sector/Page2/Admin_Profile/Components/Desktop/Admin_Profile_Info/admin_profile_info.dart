import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../Universal_Widgets/custom_text_form_field.dart';
import '../../../../../../LandLord_Sector/Page1/Land_Lord_Profile_Information_Page/Components/Desktop_Components/Profile_Image_File_Picker/profile_image_file_picker.dart';

class AdminProfileInfoDesktop extends StatelessWidget {
  const AdminProfileInfoDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 100.w, right: 100.w),
      child: Column(
        children: [

          ProfileImageFilePicker(),
          SizedBox(height: 10.h,),

          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
                onPressed: (){},
                child: Text("Edit")
            ),
          ),
          SizedBox(height: 10.h,),

          //Name
          CustomTextFormField(
            labelText: "Enter Your Name",
          ),
          SizedBox(height: 10.h,),

          //Mobile Number
          CustomTextFormField(
            labelText: "Enter Your Mobile Number",
          ),
          SizedBox(height: 10.h,),

          //Email
          CustomTextFormField(
            labelText: "Your Email",
          ),
          SizedBox(height: 10.h,),

        ],
      ),
    );
  }
}
