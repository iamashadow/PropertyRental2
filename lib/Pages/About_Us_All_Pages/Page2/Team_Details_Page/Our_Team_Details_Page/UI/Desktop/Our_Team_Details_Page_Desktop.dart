import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/About_Us_All_Pages/Page2/Team_Details_Page/Our_Team_Details_Page/our_team_details_page_controller_class.dart';
import 'package:property_rental_2/Pages/Our_Properties_Details_Page_Desktop/Desktop_Components/agent_contact_form.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text_form_field.dart';
import 'package:property_rental_2/Utils/All_List/all_list.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_components/Day_List_Components/day_list_components.dart';

class OurTeamDetailsPageDesktop extends StatelessWidget {

  String? profileImage;
  String? position;
  String? bio;
  String? email;
  String? mobileNumber;
  String? name;

  OurTeamDetailsPageDesktop({super.key,

    this.profileImage,
    this.position,
    this.name,
    this.mobileNumber,
    this.email,
    this.bio

  });


  var ourTeamDetailsPageClassController = Get.put(OurTeamDetailsPageControllerClass());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //HeadBanner
            Container(
              height: 1.sh*0.8,
              width: 1.sw,
              child: HeadBannerSection(),
            ),
            SizedBox(height: 1.sh*0.1,),


            // Image.network(profileImage!),
            // Text(position!),
            // Text(name!),
            // Text(email!),
            // Text(mobileNumber!),
            // Text(bio!),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(


                    /*
                    There Was a IntrinsicHeight Widget
                     */

                    child: IntrinsicHeight(
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //ProfileImage, Name, Position, Office, Mobile, WhatsApp, Email
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //ProfileImage
                              Container(
                                width: 1.w*70,
                                height: 1.h*200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(profileImage!)
                                    )
                                ),
                              ),
                              SizedBox(width: 1.w*10,),

                              //Name, Position, Office, Mobile, WhatsApp, Email
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Name
                                    CustomText(
                                      fontColor: ColorManager.blackColor,
                                      title: name!,
                                      fontSize: 5.sp,
                                      fontWeight: FontWeight.bold,

                                    ),
                                    SizedBox(height: 1.h*2,),

                                    //Position
                                    CustomText(
                                      fontColor: ColorManager.blackColor,
                                      title: position!,
                                      fontSize: 3.sp,
                                      fontWeight: FontWeight.w500,

                                    ),
                                    SizedBox(height: 1.h*2,),


                                    //Office
                                    Row(
                                      children: [
                                        const Icon(Icons.phone),
                                        SizedBox(width: 1.w*2,),
                                        CustomText(
                                          fontColor: ColorManager.blackColor,
                                          title: mobileNumber!,
                                          fontSize: 3.sp,
                                          fontWeight: FontWeight.w500,

                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 1.h*2,),

                                    //Mobile
                                    Row(
                                      children: [
                                        const Icon(Icons.mobile_friendly),
                                        SizedBox(width: 1.w*2,),
                                        CustomText(
                                          fontColor: ColorManager.blackColor,
                                          title: mobileNumber!,
                                          fontSize: 3.sp,
                                          fontWeight: FontWeight.w500,

                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 1.h*2,),


                                    //WhatsApp
                                    Row(
                                      children: [
                                        const Icon(FontAwesomeIcons.whatsapp),
                                        SizedBox(width: 1.w*2,),
                                        CustomText(
                                          fontColor: ColorManager.blackColor,
                                          title: mobileNumber!,
                                          fontSize: 3.sp,
                                          fontWeight: FontWeight.w500,

                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 1.h*2,),


                                    //Email
                                    Row(
                                      children: [
                                        const Icon(Icons.email),
                                        SizedBox(width: 1.w*2,),
                                        CustomText(
                                          fontColor: ColorManager.blackColor,
                                          title: email!,
                                          fontSize: 3.sp,
                                          fontWeight: FontWeight.w500,

                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 1.h*2,),

                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 1.h*15,),

                          //About Me Text
                          CustomText(
                            title: "About Me",
                            fontColor: ColorManager.blackColor,
                            fontSize: 5.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(height: 1.h*15,),

                          //About me Description
                          Expanded(
                            child: CustomText(
                              fontColor: ColorManager.blackColor,
                              title: bio!,
                              fontSize: 3.sp,
                            ),
                          ),
                          SizedBox(height: 1.h*10,),

                          Divider(),
                          SizedBox(height: 1.h*10,),


                          //Message Me Form
                          Card(
                            surfaceTintColor: ColorManager.whiteColor,
                            child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  DayListComponent(),

                                  CustomTextFormField(
                                    labelText: "Name",
                                    controller: ourTeamDetailsPageClassController.ourTeamDetailsPageNameController,
                                  ),
                                  SizedBox(height: 1.h*10,),

                                  //Email
                                  CustomTextFormField(
                                    labelText: "Email",
                                    controller: ourTeamDetailsPageClassController.ourTeamDetailsPageEmailController,
                                  ),
                                  SizedBox(height: 1.h*10,),

                                  //Phone Number
                                  CustomTextFormField(
                                    labelText: "Phone Number",
                                    controller: ourTeamDetailsPageClassController.ourTeamDetailsPagePhoneNumberController,
                                  ),
                                  SizedBox(height: 1.h*10,),

                                  //Your Message
                                  CustomTextFormField(
                                    labelText: "Your Message",
                                    controller: ourTeamDetailsPageClassController.ourTeamDetailsPageBioController,
                                    maxLines: 5,
                                  ),
                                  SizedBox(height: 1.h*10,),

                                  //Submit Button
                                  CustomButton(
                                    fontColor: ColorManager.whiteColor,
                                    fontSize: 3.sp,
                                    fontWeight: FontWeight.bold,
                                    buttonWidth: 1.w*30,
                                    buttonTitle: "Submit",
                                    buttonRadius: 10,
                                    buttonHeight: 1.h*30,
                                    buttonColor: ColorManager.kasmiriBlue,
                                    onTap: (){
                                      launchUrl(Uri(
                                        scheme: "mailto",
                                        path: "rezajr2k18@gmail.com",
                                        query: "Send a Mail to Imtiaz Chowdhury",
                                      ));
                                    },
                                  ),
                                  SizedBox(height: 1.h*10,),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 1.h*10,),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 1.w*10,),

                  //Featured Properties
                  Container(
                    height: 1.sh,
                    width: 1.sw*0.3,
                    color: Colors.red,
                  ),
                ],
              ),
            ),

            //See my Listings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //See my Listings
                  CustomText(
                    title: "See My Listings",
                    fontColor: ColorManager.blackColor,
                    fontSize: 5.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(width: 1.w*10,),

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                      itemBuilder: (context, index) => Column(children: [
                        Container(width: 1.sw,height: 1.h*20,color: Colors.red,),
                        SizedBox(height: 1.h*2,),
                      ],),
                  ),

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
