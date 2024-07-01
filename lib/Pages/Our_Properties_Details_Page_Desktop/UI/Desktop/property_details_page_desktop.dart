import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';
import 'package:property_rental_2/Utils/Model/property_approve_request_to_admin_model.dart';
import '../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Desktop_Components/agent_contact_form.dart';
import '../../Desktop_Components/property_details.dart';
import '../../Desktop_Components/property_features.dart';
import '../../Desktop_Components/property_image.dart';
import '../../Desktop_Components/property_location.dart';
import '../../Desktop_Components/property_name_price.dart';
import '../../Desktop_Components/property_video.dart';
import '../../Desktop_Components/similar_properties.dart';

class OurPropertiesDetailsPage extends StatelessWidget {
  final PropertyInfo? propertyInfo;

  OurPropertiesDetailsPage({
    super.key,
    this.propertyInfo,
  });

  final LandLordProfileInformationControllerClass controller =
      Get.find<LandLordProfileInformationControllerClass>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HeadBanner
            Container(
              height: 1.sh * 0.8,
              width: 1.sw,
              child: const HeadBannerSection(),
            ),
            SizedBox(
              height: 1.sh * 0.1,
            ),

            //Property Name, Price, Posting date, Status
            Padding(
              padding: EdgeInsets.only(
                left: 1.sw * 0.2,
                right: 1.sw * 0.2,
                bottom: 1.sh * 0.01,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 1.sh * 0.1,
                    width: 1.sw,
                    child: PropertyNamePrice(
                      propertyName: propertyInfo!.propertyName,
                      propertyNameFontSize: 25,
                      propertyNameFontWeight: FontWeight.bold,
                      propertyAddingDate: DateFormat('dd MMM yyyy')
                          .format(propertyInfo!.createdAt!),
                      propertyAddingDateColor: Colors.blueGrey,
                      propertyAddingDateFontSize: 15,
                      propertyAddingDateFontWeight: FontWeight.w700,
                      propertyStatusText: propertyInfo!.propertyStatus,
                      propertyStatusTextColor: Colors.blueGrey,
                      propertyStatusTextSize: 20,
                      propertyPriceText: propertyInfo!.propertyPrice.toString(),
                      propertyPriceTextColor: const Color(0xFF4b5ea3),
                      propertyPriceTextSize: 25,
                      propertyPriceTextFontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 1.sh * 0.05,
                  ),
                  // PropertyDetailsImageDesktop(),
                  //carosel for property images
                  propertyInfo?.propertyImages == null
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
                      : CarouselSlider(
                          items: propertyInfo?.propertyImages!
                              .map((e) => CachedNetworkImage(
                                    imageUrl: e,
                                    errorWidget: (context, url, error) =>
                                        Image.network(
                                      "https://ecowaterqa.vtexassets.com/arquivos/ids/157145/stillnoimageavailable.jpg?v=637179063344070000",
                                      fit: BoxFit.cover,
                                    ),
                                  ))
                              .toList(),
                          options: CarouselOptions(
                            height: 1.sh * 0.4,
                            aspectRatio: 16 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                  SizedBox(
                    height: 1.sh * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          //Property ID & Features
                          PropertyFetures(
                            propertyBedrooms: propertyInfo?.bedrooms.toString(),
                            propertyBathrooms:
                                propertyInfo?.bathrooms.toString(),
                            propertyArea: propertyInfo?.area.toString(),
                          ),
                          SizedBox(
                            height: 1.sh * 0.05,
                          ),

                          //Property Details
                          Card(
                            elevation: 3,
                            child: Container(
                              padding: EdgeInsets.all(1.sh * 0.020),
                              color: Colors.white,
                              width: 1.sw * 0.36,
                              child: PropertyDetails(
                                  bio: propertyInfo?.propertyBio),
                            ),
                          ),
                          SizedBox(
                            height: 1.sh * 0.05,
                          ),

                          // //Property Video
                          // Container(
                          //   width: 1.sw*0.36,
                          //   color: Colors.amber,
                          //   child: PropertyVideo(),
                          // ),
                          // SizedBox(height: 1.sh*0.05,),

                          //Property Map Location
                          // Container(
                          //   width: 1.sw * 0.36,
                          //   color: Colors.amber,
                          //   child: ,
                          // ),
                          SizedBox(
                            height: 1.sh * 0.05,
                          ),

                          //Similar Properties
                          Container(
                            width: 1.sw * 0.36,
                            height: 1.sh * 0.60,
                            // color: Colors.amber,
                            child: SimilarProjects(),
                          ),
                          SizedBox(
                            height: 1.sh * 0.05,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 1.sw * 0.01,
                      ),

                      //Agent Contact Form
                      Container(
                        // color: Colors.amber,
                        width: 1.sw * 0.225,
                        child: AgentContactForm(
                            owner: propertyInfo?.owner is String
                                ? Owner(
                                    id: controller.account.value?.id,
                                    name: controller.account.value?.name,
                                    email: controller.account.value?.email,
                                    mobileNumber:
                                        controller.account.value?.mobileNumber,
                                    officeNumber:
                                        controller.account.value?.officeNumber,
                                    whatsAppNumber: controller
                                        .account.value?.whatsAppNumber,
                                    profileImage:
                                        controller.account.value?.profileImage,
                                  )
                                : propertyInfo?.owner),
                      )
                    ],
                  ),
                ],
              ),
            ),

            //WebFooter Area
            Container(
              width: 1.sw,
              height: 1.sh * 0.6,
              color: const Color(0xFF303030),
              child: const FooterAreaDesktop(),
            ),
          ],
        ),
      ),
    );
  }
}
