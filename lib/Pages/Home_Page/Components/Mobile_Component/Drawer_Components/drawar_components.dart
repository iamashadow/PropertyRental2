import 'package:flutter/material.dart';

import '../../../../../Universal_Widgets/custom_text.dart';

class DrawerComponents extends StatelessWidget {
  const DrawerComponents({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Drawer(
      child: Column(
        children: [
          CustomText(
            title: "Properties",
          ),
          SizedBox(width: size.width*0.010,),

          CustomText(
            title: "About Us",
          ),
          SizedBox(width: size.width*0.010,),

          CustomText(
            title: "Our Services",
          ),
          SizedBox(width: size.width*0.010,),

          CustomText(
            title: "FAQs",
          ),
          SizedBox(width: size.width*0.010,),

          CustomText(
            title: "News",
          ),
          SizedBox(width: size.width*0.010,),

          CustomText(
            title: "Contact +8801626583370",
          ),
          SizedBox(width: size.width*0.010,),
        ],
      ),
    );
  }
}
