import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Utils/All_List/all_list.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import 'package:property_rental_2/controller/our_propertise_controller.dart';

import '../../../../../../Our_Properties_Details_Page_Desktop/UI/Desktop/property_details_page_desktop.dart';

class PropertiesForRent extends StatelessWidget {
  PropertiesForRent({super.key});
  final OurPropertiseController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: controller.allOpenProperties.value!.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OurPropertiesDetailsPage(
                    propertyInfo: controller.allOpenProperties.value![index],
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
                        image: NetworkImage(
                          controller.allOpenProperties.value![index]
                                  .propertyImages?.first ??
                              "https://ecowaterqa.vtexassets.com/arquivos/ids/157145/stillnoimageavailable.jpg?v=637179063344070000",
                        ),
                      )),
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
                            title: controller
                                .allOpenProperties.value![index].propertyName,
                          ),
                          SizedBox(
                            height: 50.h,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(FontAwesomeIcons.bed),
                                      SizedBox(
                                        width: 1.sw * 0.010,
                                      ),
                                      //BedRooms
                                      CustomText(
                                        title: controller.allOpenProperties
                                            .value![index].bedrooms
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(FontAwesomeIcons.bath),
                                      SizedBox(
                                        width: 1.sw * 0.010,
                                      ),
                                      //BedRooms
                                      CustomText(
                                        title: controller.allOpenProperties
                                            .value![index].bathrooms
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(FontAwesomeIcons.chartArea),
                                      SizedBox(
                                        width: 1.sw * 0.010,
                                      ),
                                      //BedRooms
                                      CustomText(
                                        title: controller.allOpenProperties
                                            .value![index].area
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
                        CustomText(
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sp,
                          fontColor: controller.allOpenProperties.value![index]
                                      .propertyStatus ==
                                  "Sold"
                              ? Colors.red
                              : controller.allOpenProperties.value![index]
                                          .propertyStatus ==
                                      "Available"
                                  ? Colors.green
                                  : controller.allOpenProperties.value![index]
                                              .propertyStatus ==
                                          "Rented"
                                      ? Colors.deepPurple
                                      : null,
                          title: controller
                              .allOpenProperties.value![index].propertyStatus,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomText(
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold,
                          fontSize: 5.sp,
                          fontColor: ColorManager.kasmiriBlue,
                          title: controller
                              .allOpenProperties.value![index].propertyPrice
                              .toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
