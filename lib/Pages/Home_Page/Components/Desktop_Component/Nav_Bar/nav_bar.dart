import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Universal_Widgets/custom_text.dart';
import '../../../home_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: 1.sh*0.030,
      width: 1.sw,
      child: Padding(
        padding: EdgeInsets.only(left: 1.sw*0.2, right: 1.sw*0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(),
                    ),
                );
              },
              child: CustomText(
                title: "PropertyRental",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontColor: Colors.blue,
              ),
            ),
            Row(
              children: [
                CustomText(
                  title: "Properties",
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.blue,
                ),
                SizedBox(width: size.width*0.010,),

                CustomText(
                  title: "About Us",
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.blue,
                ),
                SizedBox(width: size.width*0.010,),

                CustomText(
                  title: "Our Services",
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.blue,
                ),
                SizedBox(width: size.width*0.010,),

                CustomText(
                  title: "FAQs",
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.blue,
                ),
                SizedBox(width: size.width*0.010,),

                CustomText(
                  title: "News",
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.blue,
                ),
                SizedBox(width: size.width*0.010,),

                CustomText(
                  title: "Contact +8801626583370",
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.blue,
                ),
                SizedBox(width: size.width*0.010,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
