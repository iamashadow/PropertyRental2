import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:property_rental_2/Pages/About_Us_All_Pages/Page2/Team_Details_Page/Our_Team_Details_Page/our_team_details_page_controller_class.dart';

import '../../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../../Utils/All_List/all_list.dart';
import '../../../../../../../../Utils/Color_Manager/colo_manager.dart';

class DatePickerComponent extends StatelessWidget {
  DatePickerComponent({super.key});

  var ourTeamDetailsController = Get.put(OurTeamDetailsPageControllerClass());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Date of Birth
        CustomText(
          title: "Meet with me",
          fontSize: 4.sp,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 10.h,
        ),

        InkWell(
          onTap: () async {
            DateTime? datePicked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2124, 12, 30),

            );

            if (datePicked != null) {
              ourTeamDetailsController.selectedDate.value =
                  datePicked;
            }
          },
          child: Obx(() =>
          ourTeamDetailsController.selectedDate.value != null
              ? CustomText(
            title:
            "Schedule a Day : ${ourTeamDetailsController.selectedDate.value!.toLocal().toString().split(' ')[0]}", // Displaying date in YYYY-MM-DD format
            fontColor: ColorManager.blackColor,
            fontWeight: FontWeight.bold,
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
              CustomText(
              title: "Schedule a Day : ",
              fontColor: ColorManager.kasmiriBlue,
            ),
              const Icon(Icons.calendar_month_rounded)
          ],
          ),
          ),
        ),
      ],
    );
  }
}
