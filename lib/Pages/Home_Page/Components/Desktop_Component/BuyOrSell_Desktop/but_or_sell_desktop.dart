import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../Universal_Widgets/our_amazing_service_button_retangle.dart';

class BuyOrSellDesktop extends StatelessWidget {
  const BuyOrSellDesktop({super.key});

  @override
  Widget build(BuildContext context) {

    var backgroundImage = "https://images.unsplash.com/photo-1505521586751-90af6a8d5efa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHByb3BlcnR5JTIwbWFuYWdlbWVudHxlbnwwfDB8MHx8fDA%3D";

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(backgroundImage)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            title: "Buy or Sell",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontColor: Colors.white,
          ),
          CustomText(
            title: "Looking to Buy a new property or Sell an existing one?",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontColor: Colors.white,
          ),
          SizedBox(height: 1.sw*0.010,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OurAmazingServiceButtonRetangle(
                height: 1.sh*0.050,
                width: 1.sw*0.1,
                buttonColor: const Color(0xFF77BA77),
                titleSize: 20,
                titleColor: Colors.white,
                fontWeight: FontWeight.bold,
                buttonTitle: "Submit Property",
              ),
              SizedBox(width: 1.sw*0.020,),
              OurAmazingServiceButtonRetangle(
                height: 1.sh*0.050,
                width: 1.sw*0.1,
                buttonColor: const Color(0xFF4B5EA3),
                titleSize: 20,
                titleColor: Colors.white,
                fontWeight: FontWeight.bold,
                buttonTitle: "Browse Properties",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
