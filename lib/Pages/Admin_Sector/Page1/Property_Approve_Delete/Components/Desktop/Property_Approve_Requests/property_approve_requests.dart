import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';

import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Utils/All_List/all_list.dart';
import '../../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../../Our_Properties_Details_Page_Desktop/UI/Desktop/property_details_page_desktop.dart';

class PropertyApproveRequests extends StatelessWidget {
  const PropertyApproveRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: AllList.OurPropertiesList.length,
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => OurPropertiesDetailsPage(

                    //Property Name
                    propertyName: AllList.OurPropertiesList[index]["propertyName"]!,
                    propertyNameFontSize: 25,
                    propertyNameFontWeight: FontWeight.bold,

                    //Property Posting Date
                    propertyAddingDate: AllList.OurPropertiesList[index]["posetingDate"]!,
                    propertyAddingDateColor: Colors.blueGrey,
                    propertyAddingDateFontSize: 15,
                    propertyAddingDateFontWeight: FontWeight.w700,

                    //Property Status
                    propertyStatusText: AllList.OurPropertiesList[index]["propertyType"]!,
                    propertyStatusTextColor: Colors.blueGrey,
                    propertyStatusTextSize: 20,

                    //Property Price
                    propertyPriceText: AllList.OurPropertiesList[index]["propertyPrice"]!,
                    propertyPriceTextColor: const Color(0xFF4b5ea3),
                    propertyPriceTextSize: 25,
                    propertyPriceTextFontWeight: FontWeight.w800,

                    //Property Feature
                    propertyBedrooms: AllList.OurPropertiesList[index]["bedRooms"]!,
                    propertyBathrooms: AllList.OurPropertiesList[index]["bathRooms"]!,
                    propertyArea: AllList.OurPropertiesList[index]["propertyArea"]!,

                  ),
                ),
              );
            },
            child: IntrinsicHeight(
              child: Container(
                color: ColorManager.whiteColor,
                margin: EdgeInsets.only(left: 80.w, right: 80.w, bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(AllList.OurPropertiesList[index]["propertyImage"]!),
                          )
                      ),
                    ),
                    SizedBox(width: 10.w,),

                    Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.bold,
                            fontSize: 5.sp,
                            fontColor: ColorManager.blackColor,
                            title: AllList.OurPropertiesList[index]["propertyName"],

                          ),

                          CustomText(
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.bold,
                            fontSize: 5.sp,
                            fontColor: AllList.OurPropertiesList[index]["propertyType"] == "Sold" ? Colors.red :
                            AllList.OurPropertiesList[index]["propertyType"] == "Available" ? Colors.green :
                            AllList.OurPropertiesList[index]["propertyType"] == "Rented" ? Colors.deepPurple : null,
                            title: AllList.OurPropertiesList[index]["propertyType"],

                          ),
                          SizedBox(width: 10.w,),

                          CustomText(
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.bold,
                            fontSize: 5.sp,
                            fontColor: ColorManager.kasmiriBlue,
                            title: AllList.OurPropertiesList[index]["propertyPrice"],

                          ),

                          Row(
                            children: [
                              //BedRooms
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title: "Bedrooms",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(height: 1.sh*0.015,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Icon(FontAwesomeIcons.bed),
                                      SizedBox(width: 1.sw*0.010,),
                                      //BedRooms
                                      CustomText(
                                        title: AllList.OurPropertiesList[index]["bedRooms"],
                                        fontSize: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 1.sw*0.010,),

                              //BatRooms
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title: "Bathrooms",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(height: 1.sh*0.015,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Icon(FontAwesomeIcons.bath),
                                      SizedBox(width: 1.sw*0.010,),
                                      //BedRooms
                                      CustomText(
                                        title: AllList.OurPropertiesList[index]["bathRooms"],
                                        fontSize: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 1.sw*0.010,),


                              //Area
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    title: "Area",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(height: 1.sh*0.015,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Icon(FontAwesomeIcons.chartArea),
                                      SizedBox(width: 1.sw*0.010,),
                                      //BedRooms
                                      CustomText(
                                        title: AllList.OurPropertiesList[index]["propertyArea"],
                                        fontSize: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 1.sw*0.010,),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),

                    Container(
                        margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        child: VerticalDivider(color: ColorManager.kasmiriBlue, thickness: 2,)
                    ),
                    SizedBox(width: 10.w,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        CustomButton(
                          fontWeight: FontWeight.w700,
                          fontColor: ColorManager.whiteColor,
                          fontSize: 3.sp,
                          onTap: (){},
                          buttonColor: ColorManager.kasmiriBlue,
                          buttonTitle: "Approve",
                          buttonRadius: 10,
                          buttonHeight: 1.h*40,
                          buttonWidth: 1.w*20,
                        ),
                        SizedBox(height: 10.h,),

                        CustomButton(
                          fontWeight: FontWeight.w700,
                          fontColor: ColorManager.blackColor,
                          fontSize: 3.sp,
                          onTap: (){},
                          buttonColor: ColorManager.redColor.withOpacity(0.5),
                          buttonTitle: "Decline",
                          buttonRadius: 10,
                          buttonHeight: 1.h*40,
                          buttonWidth: 1.w*20,
                        ),


                      ],
                    ),

                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
