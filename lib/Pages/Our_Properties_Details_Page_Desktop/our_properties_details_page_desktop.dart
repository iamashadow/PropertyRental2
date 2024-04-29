// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../Home_Page/Components/Desktop_Component/Footer_Area_Desktop/footer_area_desktop.dart';
// import '../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
// import 'Components/agent_contact_form.dart';
// import 'Components/property_details.dart';
// import 'Components/property_features.dart';
// import 'Components/property_image.dart';
// import 'Components/property_location.dart';
// import 'Components/property_name_price.dart';
// import 'Components/property_video.dart';
// import 'Components/similar_properties.dart';
//
// class OurPropertiesDetailsPage extends StatelessWidget {
//
//   //PropertyName
//   String? propertyName;
//   double? propertyNameFontSize;
//   FontWeight? propertyNameFontWeight;
//
//   //Property Posting Date
//   String? propertyAddingDate;
//   Color? propertyAddingDateColor;
//   double? propertyAddingDateFontSize;
//   FontWeight? propertyAddingDateFontWeight;
//
//   //Property Status
//   String? propertyStatusText;
//   Color? propertyStatusTextColor;
//   double? propertyStatusTextSize;
//
//   //Property Price
//   String? propertyPriceText;
//   Color? propertyPriceTextColor;
//   double? propertyPriceTextSize;
//   FontWeight? propertyPriceTextFontWeight;
//
//   //Property Features
//   String? propertyBedrooms;
//   String? propertyBathrooms;
//   String? propertyArea;
//
//   OurPropertiesDetailsPage({super.key,
//
//     this.propertyStatusTextSize,
//     this.propertyStatusTextColor,
//     this.propertyStatusText,
//     this.propertyPriceTextSize,
//     this.propertyPriceTextFontWeight,
//     this.propertyPriceTextColor,
//     this.propertyPriceText,
//     this.propertyNameFontWeight,
//     this.propertyNameFontSize,
//     this.propertyName,
//     this.propertyAddingDateFontWeight,
//     this.propertyAddingDateFontSize,
//     this.propertyAddingDateColor,
//     this.propertyAddingDate,
//     this.propertyBedrooms,
//     this.propertyBathrooms,
//     this.propertyArea,
//
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7F7F7),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             //HeadBanner
//             Container(
//               height: 1.sh*0.8,
//               width: 1.sw,
//               child: HeadBannerSection(),
//             ),
//             SizedBox(height: 1.sh*0.1,),
//
//             //Property Name, Price, Posting date, Status
//             Padding(
//               padding: EdgeInsets.only(
//                 left: 1.sw*0.2,
//                 right: 1.sw*0.2,
//                 bottom: 1.sh*0.01,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 1.sh*0.1,
//                     width: 1.sw,
//                     child: PropertyNamePrice(
//
//                       propertyName: propertyName!,
//                       propertyNameFontSize: propertyNameFontSize,
//                       propertyNameFontWeight: propertyNameFontWeight,
//
//                       propertyAddingDate: propertyAddingDate!,
//                       propertyAddingDateColor: propertyAddingDateColor,
//                       propertyAddingDateFontSize: propertyAddingDateFontSize,
//                       propertyAddingDateFontWeight: propertyAddingDateFontWeight,
//
//                       propertyStatusText: propertyStatusText!,
//                       propertyStatusTextColor: propertyStatusTextColor,
//                       propertyStatusTextSize: propertyStatusTextSize,
//
//                       propertyPriceText: propertyPriceText!,
//                       propertyPriceTextColor: propertyPriceTextColor,
//                       propertyPriceTextSize: propertyPriceTextSize,
//                       propertyPriceTextFontWeight: propertyPriceTextFontWeight,
//
//                     ),
//                   ),
//                   SizedBox(height: 1.sh*0.05,),
//
//                   PropertyDetailsImageDesktop(),
//                   SizedBox(height: 1.sh*0.05,),
//
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         children: [
//                           PropertyFetures(
//                             propertyBedrooms: propertyBedrooms,
//                             propertyBathrooms: propertyBathrooms,
//                             propertyArea: propertyArea,
//                           ),
//                           SizedBox(height: 1.sh*0.05,),
//
//
//                           //Property Details
//                           Card(
//                             elevation: 3,
//                             child: Container(
//                               padding: EdgeInsets.all(1.sh*0.020),
//                               color: Colors. white,
//                               width: 1.sw*0.36,
//                               child: PropertyDetails(),
//                             ),
//                           ),
//                           SizedBox(height: 1.sh*0.05,),
//
//                           //Property Video
//                           Container(
//                             width: 1.sw*0.36,
//                             color: Colors.amber,
//                             child: PropertyVideo(),
//                           ),
//                           SizedBox(height: 1.sh*0.05,),
//
//
//                           //Property Map Location
//                           Container(
//                             width: 1.sw*0.36,
//                             color: Colors.amber,
//                             child: PropertyLocation(),
//                           ),
//                           SizedBox(height: 1.sh*0.05,),
//
//
//                           //Similar Properties
//                           Container(
//                             width: 1.sw*0.36,
//                             height: 1.sh*0.60,
//                             // color: Colors.amber,
//                             child: SimilarProjects(),
//                           ),
//                           SizedBox(height: 1.sh*0.05,),
//                         ],
//                       ),
//                       SizedBox(width: 1.sw*0.01,),
//                       Container(
//                         // color: Colors.amber,
//                         width: 1.sw*0.225,
//                         child: AgentContactForm(),
//                       )
//                     ],
//                   ),
//
//                 ],
//               ),
//             ),
//
//             //WebFooter Area
//             Container(
//               width: 1.sw,
//               height: 1.sh*0.6,
//               color: const Color(0xFF303030),
//               child: FooterAreaDesktop(),
//             ),
//
//
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/property_details_page_desktop.dart';
import 'UI/Mobile/property_details_page_mobile.dart';

class PropertiesDetailsPage extends StatelessWidget {
  const PropertiesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: OurPropertiesDetailsPage(),
      mobile: PropertyDetailsPageMobile(),
    );
  }
}
