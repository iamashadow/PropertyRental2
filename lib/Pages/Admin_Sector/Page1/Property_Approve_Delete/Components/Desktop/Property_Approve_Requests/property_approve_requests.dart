import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Utils/Model/property_approve_request_to_admin_model.dart';
import 'package:property_rental_2/controller/our_propertise_controller.dart';

import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Utils/All_List/all_list.dart';
import '../../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../../Our_Properties_Details_Page_Desktop/UI/Desktop/property_details_page_desktop.dart';

class PropertyApproveRequests extends StatelessWidget {
  PropertyApproveRequests(
      {super.key, required this.controller, required this.propertyInfo});
  final OurPropertiseController controller;
  final List<PropertyInfo> propertyInfo;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: propertyInfo.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OurPropertiesDetailsPage(
                  propertyInfo: propertyInfo[index],
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
                  propertyInfo[index].propertyImages == null
                      ? Container(
                          width: 1.sw * 0.3,
                          height: 1.sh * 0.3,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://ecowaterqa.vtexassets.com/arquivos/ids/157145/stillnoimageavailable.jpg?v=637179063344070000",
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 80.w,
                          height: 150.h,
                          child: CachedNetworkImage(
                            imageUrl:
                                propertyInfo[index].propertyImages?.first ?? "",
                            fit: BoxFit.cover,
                            errorWidget: (context, url, error) => Image.network(
                                "https://ecowaterqa.vtexassets.com/arquivos/ids/157145/stillnoimageavailable.jpg?v=637179063344070000"),
                          ),
                        ),
                  SizedBox(
                    width: 10.w,
                  ),
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
                          title: propertyInfo[index].propertyName,
                        ),
                        CustomText(
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sp,
                          fontColor:
                              propertyInfo[index].propertyStatus == "Sold"
                                  ? Colors.red
                                  : propertyInfo[index].propertyStatus ==
                                          "Available"
                                      ? Colors.green
                                      : propertyInfo[index].propertyStatus ==
                                              "Rented"
                                          ? Colors.deepPurple
                                          : null,
                          title: propertyInfo[index].propertyType,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomText(
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sp,
                          fontColor: ColorManager.kasmiriBlue,
                          title: propertyInfo[index].propertyPrice.toString(),
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
                                SizedBox(
                                  height: 1.sh * 0.015,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(FontAwesomeIcons.bed),
                                    SizedBox(
                                      width: 1.sw * 0.010,
                                    ),
                                    //BedRooms
                                    CustomText(
                                      title: propertyInfo[index]
                                          .bedrooms
                                          .toString(),
                                      fontSize: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 1.sw * 0.010,
                            ),

                            //BatRooms
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: "Bathrooms",
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 1.sh * 0.015,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(FontAwesomeIcons.bath),
                                    SizedBox(
                                      width: 1.sw * 0.010,
                                    ),
                                    //BedRooms
                                    CustomText(
                                      title: propertyInfo[index]
                                          .bathrooms
                                          .toString(),
                                      fontSize: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 1.sw * 0.010,
                            ),

                            //Area
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: "Area",
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 1.sh * 0.015,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(FontAwesomeIcons.chartArea),
                                    SizedBox(
                                      width: 1.sw * 0.010,
                                    ),
                                    //BedRooms
                                    CustomText(
                                      title:
                                          propertyInfo[index].area.toString(),
                                      fontSize: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 1.sw * 0.010,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                      child: VerticalDivider(
                        color: ColorManager.kasmiriBlue,
                        thickness: 2,
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomButton(
                        fontWeight: FontWeight.w700,
                        fontColor: ColorManager.whiteColor,
                        fontSize: 3.sp,
                        onTap: () {
                          controller.propertyApproval(propertyInfo[index].id!);
                        },
                        buttonColor: ColorManager.kasmiriBlue,
                        buttonTitle: "Approve",
                        buttonRadius: 10,
                        buttonHeight: 1.h * 40,
                        buttonWidth: 1.w * 20,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomButton(
                        fontWeight: FontWeight.w700,
                        fontColor: ColorManager.blackColor,
                        fontSize: 3.sp,
                        onTap: () {},
                        buttonColor: ColorManager.redColor.withOpacity(0.5),
                        buttonTitle: "Decline",
                        buttonRadius: 10,
                        buttonHeight: 1.h * 40,
                        buttonWidth: 1.w * 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
