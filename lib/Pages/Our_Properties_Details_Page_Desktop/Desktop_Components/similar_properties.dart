import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:property_rental_2/Utils/All_List/all_list.dart';
import 'package:property_rental_2/controller/our_propertise_controller.dart';
import '../../../Universal_Widgets/custom_text.dart';
import '../UI/Desktop/property_details_page_desktop.dart';

class SimilarProjects extends StatelessWidget {
  String? similarPropertyName;

  SimilarProjects({
    super.key,
    this.similarPropertyName,
  });

  final OurPropertiseController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: "Similar Properties",
          fontSize: 3.sp,
          fontColor: Color(0xFF4B5EA3),
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 1.sh * 0.010),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1.w * 0.10,
                mainAxisSpacing: 1.h * 0.10,
                childAspectRatio: 0.6),
            itemCount: max(2, controller.allOpenProperties.value!.length),
            itemBuilder: (context, index) => InkWell(
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
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Image Section
                    Stack(
                      children: [
                        Container(
                          width: 1.w * 70,
                          height: 1.h * 200,
                          child: CachedNetworkImage(
                            imageUrl: controller.allOpenProperties.value?[index]
                                    .propertyImages?.first ??
                                "https://ecowaterqa.vtexassets.com/arquivos/ids/157145/stillnoimageavailable.jpg?v=637179063344070000",
                            errorWidget: (context, url, error) => Image.network(
                              "https://ecowaterqa.vtexassets.com/arquivos/ids/157145/stillnoimageavailable.jpg?v=637179063344070000",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 5,
                            right: 5,
                            child: Card(
                              color: controller.allOpenProperties.value![index]
                                          .propertyStatus ==
                                      "Sold"
                                  ? Colors.red
                                  : controller.allOpenProperties.value![index]
                                              .propertyStatus ==
                                          "Available"
                                      ? Colors.green
                                      : controller
                                                  .allOpenProperties
                                                  .value![index]
                                                  .propertyStatus ==
                                              "Rented"
                                          ? Colors.deepPurple
                                          : null,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomText(
                                  title: controller.allOpenProperties
                                          .value![index].propertyStatus ??
                                      "N/A",
                                  fontColor: Colors.white,
                                ),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 1.sh * 0.015,
                    ),

                    //PropertyName, Posting date
                    Padding(
                      padding: EdgeInsets.only(left: 1.sw * 0.015),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //Property Name
                          CustomText(
                            title: controller
                                .allOpenProperties.value![index].propertyName!,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 1.sh * 0.015,
                          ),

                          //Proderty Added on the website
                          CustomText(
                            title:
                                "Added on ${DateFormat('dd MMM yyyy').format(controller.allOpenProperties.value![index].createdAt!)}",
                            fontSize: 10,
                            fontColor: Colors.blueGrey,
                          ),
                          SizedBox(
                            height: 1.sh * 0.015,
                          ),

                          //BedRooms, BathRooms, Area
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
                          SizedBox(
                            height: 1.sh * 0.015,
                          ),

                          //PropertyStaus
                          CustomText(
                            title: controller
                                .allOpenProperties.value![index].propertyType!,
                            fontColor: Colors.blueGrey,
                          ),

                          //PropertyPrice, Favourite Icon, Compare Icon
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FittedBox(
                                child: CustomText(
                                  title:
                                      "BDT ${controller.allOpenProperties.value![index].propertyPrice}",
                                  fontColor: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),

                              //Favourite Icon, Compare Icon
                              // Row(
                              //   children: [
                              //     Icon(FontAwesomeIcons.heart),
                              //     SizedBox(width: 1.sw*0.010,),
                              //     Icon(FontAwesomeIcons.codeCompare)
                              //   ],
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
