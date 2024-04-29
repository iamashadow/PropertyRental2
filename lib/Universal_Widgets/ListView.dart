import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Utils/All_List/all_list.dart';
import '../Pages/Our_Properties_Details_Page_Desktop/UI/Desktop/property_details_page_desktop.dart';
import 'custom_text.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5.h,
          crossAxisSpacing: 2.w,
          childAspectRatio: 1,
        ),
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
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Image Section
                  Stack(
                    children: [
                      Container(
                        width: 1.sw*0.3,
                        height: 1.sh*0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(AllList.OurPropertiesList[index]["propertyImage"]!),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 5,
                          right: 5,
                          child: Card(
                            color: AllList.OurPropertiesList[index]["propertyType"] == "Sold" ? Colors.red :
                            AllList.OurPropertiesList[index]["propertyType"] == "Available" ? Colors.green :
                            AllList.OurPropertiesList[index]["propertyType"] == "Rented" ? Colors.deepPurple : null,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomText(
                                title: AllList.OurPropertiesList[index]["propertyType"],
                                fontColor: Colors.white,
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 1.sh*0.015,),


                  //PropertyName, Posting date
                  Padding(
                    padding: EdgeInsets.only(left: 1.sw*0.015),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //Property Name
                        CustomText(
                          title: AllList.OurPropertiesList[index]["propertyName"],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 1.sh*0.015,),

                        //Proderty Added on the website
                        CustomText(
                          title: "Added on ${AllList.OurPropertiesList[index]["posetingDate"]}",
                          fontSize: 10,
                          fontColor: Colors.blueGrey,
                        ),
                        SizedBox(height: 1.sh*0.015,),


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
                        SizedBox(height: 1.sh*0.015,),

                        //PropertyStaus
                        CustomText(
                          title: AllList.OurPropertiesList[index]["propertyType"],
                          fontColor: Colors.blueGrey,
                        ),

                        //PropertyPrice, Favourite Icon, Compare Icon
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              title: "BDT ${AllList.OurPropertiesList[index]["propertyPrice"]}",
                              fontColor: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            SizedBox(width: 1.sw*0.045,),

                            //Favourite Icon, Compare Icon
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.heart),
                                SizedBox(width: 1.sw*0.010,),
                                Icon(FontAwesomeIcons.codeCompare)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          );
        },
    );
  }
}

//
// return InkWell(
// onTap: (){
// Navigator.push(context,
// MaterialPageRoute(
// builder: (context) => OurPropertiesDetailsPage(
//
// //Property Name
// propertyName: AllList.OurPropertiesList[index]["propertyName"]!,
// propertyNameFontSize: 25,
// propertyNameFontWeight: FontWeight.bold,
//
// //Property Posting Date
// propertyAddingDate: AllList.OurPropertiesList[index]["posetingDate"]!,
// propertyAddingDateColor: Colors.blueGrey,
// propertyAddingDateFontSize: 15,
// propertyAddingDateFontWeight: FontWeight.w700,
//
// //Property Status
// propertyStatusText: AllList.OurPropertiesList[index]["propertyType"]!,
// propertyStatusTextColor: Colors.blueGrey,
// propertyStatusTextSize: 20,
//
// //Property Price
// propertyPriceText: AllList.OurPropertiesList[index]["propertyPrice"]!,
// propertyPriceTextColor: const Color(0xFF4b5ea3),
// propertyPriceTextSize: 25,
// propertyPriceTextFontWeight: FontWeight.w800,
//
// //Property Feature
// propertyBedrooms: AllList.OurPropertiesList[index]["bedRooms"]!,
// propertyBathrooms: AllList.OurPropertiesList[index]["bathRooms"]!,
// propertyArea: AllList.OurPropertiesList[index]["propertyArea"]!,
//
// ),
// ),
// );
// },
// child: Card(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// //Image Section
// Stack(
// children: [
// Container(
// width: 1.sw*0.3,
// height: 1.sh*0.3,
// decoration: BoxDecoration(
// image: DecorationImage(
// fit: BoxFit.cover,
// image: NetworkImage(AllList.OurPropertiesList[index]["propertyImage"]!),
// ),
// ),
// ),
// Positioned(
// bottom: 5,
// right: 5,
// child: Card(
// color: AllList.OurPropertiesList[index]["propertyType"] == "Sold" ? Colors.red :
// AllList.OurPropertiesList[index]["propertyType"] == "Available" ? Colors.green :
// AllList.OurPropertiesList[index]["propertyType"] == "Rented" ? Colors.deepPurple : null,
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: CustomText(
// title: AllList.OurPropertiesList[index]["propertyType"],
// fontColor: Colors.white,
// ),
// ),
// )
// ),
// ],
// ),
// SizedBox(height: 1.sh*0.015,),
//
//
// //PropertyName, Posting date
// Padding(
// padding: EdgeInsets.only(left: 1.sw*0.015),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// //Property Name
// CustomText(
// title: AllList.OurPropertiesList[index]["propertyName"],
// fontSize: 20,
// fontWeight: FontWeight.bold,
// ),
// SizedBox(height: 1.sh*0.015,),
//
// //Proderty Added on the website
// CustomText(
// title: "Added on ${AllList.OurPropertiesList[index]["posetingDate"]}",
// fontSize: 10,
// fontColor: Colors.blueGrey,
// ),
// SizedBox(height: 1.sh*0.015,),
//
//
// //BedRooms, BathRooms, Area
// Row(
// children: [
// //BedRooms
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// CustomText(
// title: "Bedrooms",
// fontSize: 15,
// fontWeight: FontWeight.bold,
// ),
// SizedBox(height: 1.sh*0.015,),
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const Icon(FontAwesomeIcons.bed),
// SizedBox(width: 1.sw*0.010,),
// //BedRooms
// CustomText(
// title: AllList.OurPropertiesList[index]["bedRooms"],
// fontSize: 20,
// ),
// ],
// ),
// ],
// ),
// SizedBox(width: 1.sw*0.010,),
//
// //BatRooms
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// CustomText(
// title: "Bathrooms",
// fontSize: 15,
// fontWeight: FontWeight.bold,
// ),
// SizedBox(height: 1.sh*0.015,),
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const Icon(FontAwesomeIcons.bath),
// SizedBox(width: 1.sw*0.010,),
// //BedRooms
// CustomText(
// title: AllList.OurPropertiesList[index]["bathRooms"],
// fontSize: 20,
// ),
// ],
// ),
// ],
// ),
// SizedBox(width: 1.sw*0.010,),
//
//
// //Area
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// CustomText(
// title: "Area",
// fontSize: 15,
// fontWeight: FontWeight.bold,
// ),
// SizedBox(height: 1.sh*0.015,),
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// const Icon(FontAwesomeIcons.chartArea),
// SizedBox(width: 1.sw*0.010,),
// //BedRooms
// CustomText(
// title: AllList.OurPropertiesList[index]["propertyArea"],
// fontSize: 20,
// ),
// ],
// ),
// ],
// ),
// SizedBox(width: 1.sw*0.010,),
//
// ],
// ),
// SizedBox(height: 1.sh*0.015,),
//
// //PropertyStaus
// CustomText(
// title: AllList.OurPropertiesList[index]["propertyType"],
// fontColor: Colors.blueGrey,
// ),
//
// //PropertyPrice, Favourite Icon, Compare Icon
// Row(
// // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// CustomText(
// title: "BDT ${AllList.OurPropertiesList[index]["propertyPrice"]}",
// fontColor: Colors.green,
// fontWeight: FontWeight.bold,
// fontSize: 20,
// ),
// SizedBox(width: 1.sw*0.045,),
//
// //Favourite Icon, Compare Icon
// Row(
// children: [
// Icon(FontAwesomeIcons.heart),
// SizedBox(width: 1.sw*0.010,),
// Icon(FontAwesomeIcons.codeCompare)
// ],
// )
// ],
// ),
// ],
// ),
// ),
//
//
// ],
// ),
// ),
// );
