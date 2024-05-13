import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/Home_Page/home_page.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text_form_field.dart';
import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../Utils/universal_controller.dart';
import '../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';

class LoginPageDesktopView extends StatelessWidget {
  LoginPageDesktopView({super.key});


  var univarsalController = Get.put(UniversalControllerClass());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor,
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



            Container(
              margin: EdgeInsets.only(left: 100.w, right: 100.w),
              padding: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Form(
                key: univarsalController.formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      labelText: "Enter Email",
                      textAlign: TextAlign.start,
                      validator: univarsalController.validateEmail,
                    ),
                    SizedBox(height: 10.h,),

                    CustomTextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      labelText: "Enter Password",
                      textAlign: TextAlign.start,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Please enter password";
                        }
                        else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20.h,),


                    SizedBox(
                      width: 30.w,
                      height: 30.h,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: CustomText(
                            title: "LogIn",
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.white,
                          ),
                        onPressed: (){
                            // univarsalController.isUserLogedIn.value = true;

                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => HomePage()),
                            // );

                          univarsalController.submitForm();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.sh*0.1,),




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