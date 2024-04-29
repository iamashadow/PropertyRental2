import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Universal_Widgets/service_tag.dart';

class ServiceItems extends StatelessWidget {

  String? title;

  ServiceItems({super.key,

    this.title,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ServiceTagsAndLogos(
          fontWeight: FontWeight.w500,
          fontSize: 3.sp,
          fontColor: Colors.blueGrey,
          title: title,
        ),
        Divider(),
      ],
    );
  }
}
