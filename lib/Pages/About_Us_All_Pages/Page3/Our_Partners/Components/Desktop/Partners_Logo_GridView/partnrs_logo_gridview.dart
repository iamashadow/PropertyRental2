import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Utils/All_List/all_list.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class PartnersLogoGridView extends StatelessWidget {

  double? leftMargin;
  double? rightMargin;
  // double? bottomMargin;
  ScrollPhysics? scrollPhysics;

  PartnersLogoGridView({super.key,

    this.leftMargin,
    this.rightMargin,
    // this.bottomMargin,
    this.scrollPhysics,

  });


  launchURL({String? url}) async {
    if (await canLaunchUrl(Uri.parse(url!))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 70.w, right: 70.w, bottom: 50.h),
      margin: EdgeInsets.only(left: leftMargin!, right: rightMargin!, ),
      padding: EdgeInsets.all(30),
      color: ColorManager.whiteColor,
      child: GridView.builder(
        shrinkWrap: true,
        physics: scrollPhysics,
        itemCount: AllList.ourPartnersLogoAndWebSiteLink.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2,
            crossAxisSpacing: 3.w,
              mainAxisSpacing: 10.h,
          ),
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                launchURL(url: AllList.ourPartnersLogoAndWebSiteLink[index]["webSiteLink"]!);
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(AllList.ourPartnersLogoAndWebSiteLink[index]["logo"]!)
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
