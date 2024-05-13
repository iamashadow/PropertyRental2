import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImageFilePicker extends StatelessWidget {


  ProfileImageFilePicker({super.key,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        width: 150.r,
        height: 150.r,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 10.sp,),
              SizedBox(height: 5.h,),
              Text("Upload Your Image")
            ],
          ),
        ),
      ),
    );
  }
}
