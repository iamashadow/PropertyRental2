import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Utils/universal_controller.dart';
import '../../../Universal_Widgets/custom_text.dart';
import '../../Login_Page/login_page_controller.dart';

class PropertyFetures extends StatelessWidget {

  String? propertyBedrooms;
  String? propertyBathrooms;
  String? propertyArea;

  PropertyFetures({super.key,

    this.propertyArea,
    this.propertyBathrooms,
    this.propertyBedrooms,

  });


  var universalControllerInstance = Get.put(UniversalControllerClass());
  var loginPageController = Get.put(LoginPageControllerClass());


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 1.sh*0.2,
        width: 1.sw*0.36,
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  title: "Property ID : ${loginPageController.generateRandomNumber()}",
                  fontColor: const Color(0xFF4B5EA3),
                ),
                Row(children: [
                  const Icon(FontAwesomeIcons.shareNodes, color: Color(0xFFBFBFBF),),
                  SizedBox(width: 1.sw*0.010,),
                  const Icon(FontAwesomeIcons.heart, color: Color(0xFFBFBFBF),),
                  SizedBox(width: 1.sw*0.010,),
                  const Icon(FontAwesomeIcons.codeCompare, color: Color(0xFFBFBFBF),),
                ],)
              ],
            ),
            SizedBox(height: 1.sh*0.010,),
      
            const Divider(),
            SizedBox(height: 1.sh*0.010,),
      
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
                        const Icon(FontAwesomeIcons.bed, color: Color(0xFF4B5EA3),),
                        SizedBox(width: 1.sw*0.010,),
                        //BedRooms
                        CustomText(
                          title: propertyBedrooms,
                          fontColor: const Color(0xFF4B5EA3),
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 1.sw*0.010,),
      
                //BathRooms
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
                        const Icon(FontAwesomeIcons.bath, color: Color(0xFF4B5EA3),),
                        SizedBox(width: 1.sw*0.010,),
                        //BedRooms
                        CustomText(
                          title: propertyBathrooms,
                          fontColor: const Color(0xFF4B5EA3),
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
                        const Icon(FontAwesomeIcons.chartArea, color: Color(0xFF4B5EA3),),
                        SizedBox(width: 1.sw*0.010,),
                        //BedRooms
                        CustomText(
                          title: propertyArea,
                          fontColor: const Color(0xFF4B5EA3),
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 1.sw*0.010,),
      
              ],
            ),
            SizedBox(height: 1.sh*0.010,),
      
          ],
        ),
      ),
    );
  }
}
