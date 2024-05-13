import 'dart:html';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text_form_field.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_Components/Profile_Image_File_Picker/profile_image_file_picker.dart';


class LandLordProfileInformationDesktop extends StatelessWidget {
   LandLordProfileInformationDesktop({super.key});


  // FilePickerResult? filePickerResult;
  //  File? pickedFile;
  //
  //  getImageFromGallery(context) async {
  //    filePickerResult = await FilePicker.platform.pickFiles();
  //    if (filePickerResult != null) {
  //      pickedFile = File(filePickerResult!.files.single.path.toString());
  //      Navigator.of(context).push(MaterialPageRoute(
  //          builder: (context) =>
  //          filePickerResult!.files.single.extension == 'jpg' ||
  //              filePickerResult!.files.single.extension ==  'jpeg' ||
  //              filePickerResult!.files.single.extension == 'jfif' ||
  //              filePickerResult!.files.single.extension == 'pjpeg' ||
  //              filePickerResult!.files.single.extension == 'pjp' ||
  //              filePickerResult!.files.single.extension == 'png'
  //              ? ProfileImageFilePicker(file: pickedFile!)
  //              : Text("UnSupported type file has been selected by the user")));
  //    } else {// perform some action etc}
  //    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            //HeadBanner
            Container(
              height: 1.sh*0.8,
              width: 1.sw,
              child: HeadBannerSection(),
            ),
            SizedBox(height: 1.sh*0.1,),
        


            //Upload Profile Image
            ProfileImageFilePicker(),
            SizedBox(height: 20.h,),


            Container(
              margin: EdgeInsets.only(left: 70.w, right: 70.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

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

                  //Profile Bio
                  CustomTextFormField(
                    labelText: "Say something about you",
                    maxLines: 5,
                  ),
                  SizedBox(height: 10.h,),
        
                  //Mobile Number
                  CustomTextFormField(
                    labelText: "Enter Your Mobile Number",
                  ),
                  SizedBox(height: 10.h,),

                  //WhatsApp Number
                  CustomTextFormField(
                    labelText: "Enter Your WhatsApp Number",
                  ),
                  SizedBox(height: 10.h,),

                  //Office Number
                  CustomTextFormField(
                    labelText: "Enter Your Office Mobile Number",
                  ),
                  SizedBox(height: 10.h,),
        
                  //Email
                  CustomTextFormField(
                    labelText: "Your Email",
                  ),
                  SizedBox(height: 10.h,),
        
                  //Date of Birth
                  CustomTextFormField(
                    labelText: "Enter Your Date of Birth",
                  ),
                  SizedBox(height: 10.h,),
        
                  //Nationality
                  CustomTextFormField(
                    labelText: "Enter Your Nationality",
                  ),
                  SizedBox(height: 10.h,),
        
                  //NID Upload
                  Container(
                    width: double.maxFinite,
                    height: 50.h,
                    color: ColorManager.kasmiriBlue.withOpacity(0.1),
                    child: Center(
                      child: CustomText(
                        fontSize: 3.sp,
                        fontWeight: FontWeight.w500,
                        title: "Upload your NID",
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                ],
              ),
            ),
        
        
        
            //WebFooter Area
            Container(
              width: 1.sw,
              height: 1.sh*0.6,
              color: const Color(0xFF303030),
              child: FooterAreaDesktop(),
            ),
        
          ],
        ),
      ),
    );
  }
}
