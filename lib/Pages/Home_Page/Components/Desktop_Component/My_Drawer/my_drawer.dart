import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Pages/Contact_Us_Page/contact_us_page.dart';
import 'package:property_rental_2/Pages/FAQS_Page/faqs_page.dart';
import 'package:property_rental_2/Pages/Home_Page/home_page.dart';
import 'package:property_rental_2/Pages/Login_Page/login_page.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Utils/All_Images/all_images.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../About_Us_All_Pages/Page1/About_Us_Our_Story_Page/about_us_our_story_page.dart';
import '../../../../About_Us_All_Pages/Page2/Team_Page/Our_Team_Page/our_team_page.dart';
import '../../../../About_Us_All_Pages/Page3/Our_Partners/our_partners.dart';
import '../../../../OurServices_All_Pages/Page2/Our_Sales_Service_Page/our_sales_service_page.dart';
import '../../../../Properties_All_Page/Page2/For_Rent_Page/for_rent_page.dart';
import '../../../../SignUp_Page/sign_up_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          //Drawer Header
          DrawerHeader(
            padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: Image.network(
                  AllImages.proertyGiF,
                fit: BoxFit.cover,
              ),
          ),

          //Home Page
          Card(
            surfaceTintColor: ColorManager.whiteColor,
            child: ListTile(
              contentPadding: EdgeInsets.all(1.sp),
              leading: Icon(Icons.home),
              title: CustomText(
                title: "Home Page",
                textAlign: TextAlign.start,
                fontColor: ColorManager.blackColor,
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ),
          SizedBox(height: 2.h,),

          //Properties Page
          Card(
            surfaceTintColor: ColorManager.whiteColor,
            child: ListTile(
              contentPadding: EdgeInsets.all(1.sp),
              leading: Icon(FontAwesomeIcons.landmark),
              title: CustomText(
                title: "Properties Page",
                textAlign: TextAlign.start,
                fontColor: ColorManager.blackColor,
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForRentPage()),
                );
              },
            ),
          ),
          SizedBox(height: 2.h,),

          //About Us Page
          Card(
            surfaceTintColor: ColorManager.whiteColor,
            child: ExpansionTile(
              expandedAlignment: Alignment.centerLeft,
              leading: Icon(FontAwesomeIcons.info),
              title: CustomText(
                title: "About Us",
                textAlign: TextAlign.start,
                fontColor: ColorManager.blackColor,
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUsOurStoryPage()),
                    );
                  },
                  child: CustomText(
                    title: "Our Story",
                    textAlign: TextAlign.start,
                    fontColor: ColorManager.blackColor,
                    fontSize: 3.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OurTeamPage()),
                    );
                  },
                  child: CustomText(
                    title: "Our Team",
                    textAlign: TextAlign.start,
                    fontColor: ColorManager.blackColor,
                    fontSize: 3.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OurPartnersPage()),
                    );
                  },
                  child: CustomText(
                    title: "Our Partners",
                    textAlign: TextAlign.start,
                    fontColor: ColorManager.blackColor,
                    fontSize: 3.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h,),

          //FAQs Page
          Card(
            surfaceTintColor: ColorManager.whiteColor,
            child: ListTile(
              contentPadding: EdgeInsets.all(1.sp),
              leading: Icon(FontAwesomeIcons.landmark),
              title: CustomText(
                title: "FAQs",
                textAlign: TextAlign.start,
                fontColor: ColorManager.blackColor,
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FaqsPage()),
                );
              },
            ),
          ),
          SizedBox(height: 2.h,),

          //Contact Us Page
          Card(
            surfaceTintColor: ColorManager.whiteColor,
            child: ListTile(
              contentPadding: EdgeInsets.all(1.sp),
              leading: Icon(FontAwesomeIcons.phone),
              title: CustomText(
                title: "Contact Us",
                textAlign: TextAlign.start,
                fontColor: ColorManager.blackColor,
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
            ),
          ),
          SizedBox(height: 20.h,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                fontWeight: FontWeight.w500,
                fontSize: 3.sp,
                fontColor: ColorManager.whiteColor,
                buttonRadius: 10.r,
                buttonTitle: "Login",
                buttonWidth: 20.w,
                buttonHeight: 30.h,
                buttonColor: ColorManager.kasmiriBlue,
              ),

              SizedBox(width: 10.w,),

              CustomButton(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                fontWeight: FontWeight.w500,
                fontSize: 3.sp,
                fontColor: ColorManager.whiteColor,
                buttonRadius: 10.r,
                buttonTitle: "Registration",
                buttonWidth: 20.w,
                buttonHeight: 30.h,
                buttonColor: ColorManager.blackColor,
              ),
            ],
          )



        ],
      ),
    );
  }
}
