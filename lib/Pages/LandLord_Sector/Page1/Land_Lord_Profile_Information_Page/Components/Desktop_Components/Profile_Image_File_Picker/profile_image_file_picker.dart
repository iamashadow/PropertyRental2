import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

class ProfileImageFilePicker extends StatefulWidget {
  ProfileImageFilePicker({super.key});

  @override
  State<ProfileImageFilePicker> createState() => _ProfileImageFilePickerState();
}

class _ProfileImageFilePickerState extends State<ProfileImageFilePicker> {
  PlatformFile? imageFile;

  Future<void> pickImage() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );

      if (result == null) return;

      setState(() {
        imageFile = result.files.first;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            pickImage();
          },
          child: Container(
            width: 150.r,
            height: 150.r,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              image: imageFile != null
                  ? DecorationImage(
                image: MemoryImage(Uint8List.fromList(imageFile!.bytes!)),
                fit: BoxFit.cover,
              )
                  : null,
            ),
            child: imageFile == null
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
                : null,
          ),
        ),

        SizedBox(height: 10.h,),



        if (imageFile != null)
          CustomButton(
            buttonWidth: 50.w,
            buttonHeight: 30.h,
            buttonRadius: 10.r,
            buttonTitle: "Upload Profile Picture",
            buttonColor: ColorManager.kasmiriBlue,
            fontWeight: FontWeight.w500,
            fontSize: 4.sp,
            onTap: (){},
            fontColor: Colors.white,
          ),

      ],
    );
  }
}
