import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/All_List/all_list.dart';
import '../../../Universal_Widgets/custom_text.dart';

class PropertyDetails extends StatelessWidget {
  const PropertyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.sh*0.010),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //Text : Property Details
          CustomText(
            title: "Details",
            fontColor: const Color(0xFF4B5EB8),
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height : 1.sh*0.010),

          //Text : Property Full Details
          CustomText(
            title: AllList.propertyDetails,
          )
        ],
      ),
    );
  }
}
