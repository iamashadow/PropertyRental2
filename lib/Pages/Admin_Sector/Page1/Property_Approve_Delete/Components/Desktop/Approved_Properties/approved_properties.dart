import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/controller/our_propertise_controller.dart';

import '../../../../../../../Universal_Widgets/custom_button.dart';
import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Utils/All_List/all_list.dart';
import '../../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../../Our_Properties_Details_Page_Desktop/UI/Desktop/property_details_page_desktop.dart';

class ApproveProperties extends StatelessWidget {
  ApproveProperties({super.key});
  final OurPropertiseController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount:
            controller.propertyResponseMOdel.value!.verifyedProperty().length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OurPropertiesDetailsPage(
                    propertyInfo: controller.propertyResponseMOdel.value!
                        .verifyedProperty()[index],
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
                    controller.propertyResponseMOdel.value!
                                .verifyedProperty()[index]
                                .propertyImages ==
                            null
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
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(controller
                                      .propertyResponseMOdel.value!
                                      .verifyedProperty()[index]
                                      .propertyImages!
                                      .first ??
                                  ""),
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
                            title: controller.propertyResponseMOdel.value!
                                .verifyedProperty()[index]
                                .propertyName,
                          ),
                          CustomText(
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.bold,
                            fontSize: 5.sp,
                            fontColor: controller.propertyResponseMOdel.value!
                                        .verifyedProperty()[index]
                                        .propertyStatus ==
                                    "Sold"
                                ? Colors.red
                                : controller.propertyResponseMOdel.value!
                                            .verifyedProperty()[index]
                                            .propertyStatus ==
                                        "Available"
                                    ? Colors.green
                                    : controller.propertyResponseMOdel.value!
                                                .verifyedProperty()[index]
                                                .propertyStatus ==
                                            "Rented"
                                        ? Colors.deepPurple
                                        : null,
                            title: AllList.OurPropertiesList[index]
                                ["propertyType"],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            textAlign: TextAlign.start,
                            fontWeight: FontWeight.bold,
                            fontSize: 5.sp,
                            fontColor: ColorManager.kasmiriBlue,
                            title: controller.propertyResponseMOdel.value!
                                .verifyedProperty()[index]
                                .propertyPrice
                                .toString(),
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
                                        title: controller
                                            .propertyResponseMOdel.value!
                                            .verifyedProperty()[index]
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(FontAwesomeIcons.bath),
                                      SizedBox(
                                        width: 1.sw * 0.010,
                                      ),
                                      //BedRooms
                                      CustomText(
                                        title: controller
                                            .propertyResponseMOdel.value!
                                            .verifyedProperty()[index]
                                            .propertyPrice
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
                                        title: controller
                                            .propertyResponseMOdel.value!
                                            .verifyedProperty()[index]
                                            .area
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
                    // SizedBox(
                    //   width: 10.w,
                    // ),
                    // Container(
                    //     margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                    //     child: VerticalDivider(
                    //       color: ColorManager.kasmiriBlue,
                    //       thickness: 2,
                    //     )),
                    // SizedBox(
                    //   width: 10.w,
                    // ),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Card(
                    //       child: Row(
                    //         children: [
                    //           CustomButton(
                    //             fontWeight: FontWeight.w700,
                    //             fontColor: ColorManager.blackColor,
                    //             fontSize: 3.sp,
                    //             onTap: () {},
                    //             buttonColor:
                    //                 ColorManager.redColor.withOpacity(0.5),
                    //             buttonTitle: "Remove",
                    //             buttonRadius: 10,
                    //             buttonHeight: 1.h * 40,
                    //             buttonWidth: 1.w * 20,
                    //           ),
                    //           Icon(
                    //             FontAwesomeIcons.trashCan,
                    //             color: Colors.black,
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 30.h,
                    //     ),
                    //     Row(
                    //       children: [
                    //         CustomText(
                    //           fontSize: 2.sp,
                    //           fontColor: ColorManager.blackColor,
                    //           fontWeight: FontWeight.w500,
                    //           title: "Property Status : ",
                    //           textAlign: TextAlign.right,
                    //         ),
                    //         CustomText(
                    //           fontSize: 2.sp,
                    //           fontColor: ColorManager.greenColor,
                    //           fontWeight: FontWeight.bold,
                    //           title: " Active",
                    //           textAlign: TextAlign.right,
                    //         )
                    //       ],
                    //     )
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
