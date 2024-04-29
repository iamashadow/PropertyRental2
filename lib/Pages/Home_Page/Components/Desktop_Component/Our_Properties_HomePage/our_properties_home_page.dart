import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import '../../../../../Universal_Widgets/ListView.dart';
import '../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../Universal_Widgets/our_amazing_service_button_retangle.dart';
import '../../../../Properties_All_Page/Page2/For_Rent_Page/for_rent_page.dart';

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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomText(
              title: "Looking for a home to Rent?",
              fontSize: 3.sp,
              fontColor: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
            TextButton(
              child: CustomText(
                title: "See more",
                fontSize: 3.sp,
                fontColor: ColorManager.kasmiriBlue,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForRentPage()),
                );
              },
            ),
          ],
        ),

      ],
    );
  }
}

