import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Universal_Widgets/ListView.dart';
import '../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../Universal_Widgets/our_amazing_service_button_retangle.dart';

class OurProperties extends StatelessWidget {
  const OurProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          title: "Our",
          fontSize: 25,
          fontColor: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          title: "Properties",
          fontSize: 35,
          fontColor: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
        CustomText(
          title: "Check out our latest listings",
          fontSize: 15,
          fontColor: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
        SizedBox(height: 1.sh*0.1,),
        MyListView(),
        SizedBox(height: 1.sh*0.055,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OurAmazingServiceButtonRetangle(
              height: 1.sh*0.050,
              // width: 1.sw*0.1,
              buttonColor: const Color(0xFF4B5EA3),
              titleSize: 20,
              titleColor: Colors.white,
              fontWeight: FontWeight.bold,
              buttonTitle: "Looking for a home to Rent?",
            ),
            SizedBox(width: 1.sw*0.020,),
            OurAmazingServiceButtonRetangle(
              height: 1.sh*0.050,
              // width: 1.sw*0.1,
              buttonColor: Colors.green,
              titleSize: 20,
              titleColor: Colors.white,
              fontWeight: FontWeight.bold,
              buttonTitle: "Looking for a home to Buy?",
            ),
          ],
        ),

      ],
    );
  }
}

