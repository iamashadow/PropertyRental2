import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Universal_Widgets/ListView.dart';
import '../../../../../Universal_Widgets/custom_text.dart';

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
        SizedBox(
          height: 1.sh * 0.1,
        ),

        // MyListView(),
      ],
    );
  }
}
