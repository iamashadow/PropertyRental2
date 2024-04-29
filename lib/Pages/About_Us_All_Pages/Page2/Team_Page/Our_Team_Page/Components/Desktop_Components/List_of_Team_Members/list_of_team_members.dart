import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/About_Us_All_Pages/Page2/Team_Details_Page/Our_Team_Details_Page/our_team_details_page.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Utils/All_List/all_list.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import 'package:property_rental_2/Utils/Routing_Page/routing_page.dart';

class ListOfTeamMembersDesktop extends StatelessWidget {
  const ListOfTeamMembersDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        itemCount: AllList.OurAgents.length,
        itemBuilder: (context, index){
          return Card(
            surfaceTintColor: ColorManager.whiteColor,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Profile Image & Name
                  Row(
                    children: [
                      Container(
                        width: 1.w*50,
                        height: 1.h*150,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(AllList.OurAgents[index]["profilePicture"]!),
                            )
                        ),
                      ),
                      SizedBox(width: 1.w*30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            title: AllList.OurAgents[index]["name"]!,
                            fontColor: ColorManager.blackColor,
                            fontSize: 5.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            title: "As the : ${AllList.OurAgents[index]["position"]!}",
                            fontColor: ColorManager.blackColor,
                            fontSize: 3.sp,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 1.h*30,),

                  //Profile Bio
                  CustomText(
                    title: AllList.OurAgents[index]["bio"],
                    mxLine: 5,
                    txtOverflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 1.h*20,),


                  //Mobile Number, Office Number, WhatsApp Number, Email
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          //Office Number, WhatsApp Number
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: "Office : ${AllList.OurAgents[index]["mobileNumber"]}",
                                mxLine: 5,
                                txtOverflow: TextOverflow.ellipsis,
                              ),
                              CustomText(
                                title: "WhatsApp : ${AllList.OurAgents[index]["mobileNumber"]}",
                                mxLine: 5,
                                txtOverflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          SizedBox(width: 1.w*10,),
                          //Mobile, Email
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: "Mobile : ${AllList.OurAgents[index]["mobileNumber"]}",
                                mxLine: 5,
                                txtOverflow: TextOverflow.ellipsis,
                              ),
                              CustomText(
                                title: "Email : ${AllList.OurAgents[index]["email"]}",
                                mxLine: 5,
                                txtOverflow: TextOverflow.ellipsis,
                              ),
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => OurTeamDetailsPage(
                                    position: AllList.OurAgents[index]["position"]!,
                                    bio: AllList.OurAgents[index]["bio"]!,
                                    email: AllList.OurAgents[index]["email"]!,
                                    mobileNumber: AllList.OurAgents[index]["mobileNumber"]!,
                                    name: AllList.OurAgents[index]["name"]!,
                                    profileImage: AllList.OurAgents[index]["profilePicture"]!,
                                    // profileImage: AllList.OurAgents[index]["profilePicture"]!,
                                  ),
                              ),
                          );
                          print("...................THis is test : ${Get.arguments}");
                          // Get.to(
                          //   arguments: [AllList.OurAgents[index]],
                          //     // RoutingPage.ourTeamDetailsPage,
                          //   OurTeamDetailsPage(),
                          // );

                        },
                        child: Row(
                          children: [
                            CustomText(
                              title: "View My Listings",
                              fontWeight: FontWeight.bold,
                              fontSize: 3.sp,
                              fontColor: ColorManager.greenColor,
                            ),
                            SizedBox(width: 1.w*5,),
                            Icon(Icons.arrow_forward_ios, color: ColorManager.greenColor,)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext, index) => SizedBox(height: 1.h*10,),

    );
  }
}
