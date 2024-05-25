import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Schedules/schedules_controller.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Utils/All_Images/all_images.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

class NewSchedule extends StatelessWidget {
  NewSchedule({super.key});

  var scheduleController = Get.put(ScheduleControllerClass());

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100.h,
      width: double.maxFinite,
      // padding: EdgeInsets.all(1.sp),
      margin: EdgeInsets.only(left: 100.w, right: 100.w),
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        borderRadius: BorderRadius.circular(2.r),
        border: Border.all(
          color: ColorManager.kasmiriBlue,
          width: 2,
        ),
      ),
      child: Card(
        surfaceTintColor: ColorManager.whiteColor,
        child: ExpansionTile(
          leading: const Icon(FontAwesomeIcons.person),
          title: CustomText(
            title: "Imtiaz Chowdhury",
            textAlign: TextAlign.start,
            fontColor: ColorManager.blackColor,
            fontSize: 3.sp,
            fontWeight: FontWeight.w500,
          ),
          trailing: const Icon(Icons.arrow_drop_down_outlined),
          children: [
            //Email
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.email),
                SizedBox(height: 2.w,),

                CustomText(
                  title: "Email     :",
                  fontWeight: FontWeight.bold,
                  fontSize: 2.sp,
                  fontColor: Colors.blueGrey,
                ),
                SizedBox(width: 2.w,),

                CustomText(
                  title: "imtiazchowdhury002@gmail.com",
                  fontWeight: FontWeight.bold,
                  fontSize: 2.sp,
                  fontColor: Colors.blueGrey,
                ),
              ],
            ),
            SizedBox(height: 2.h,),

            //Mobile Number
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.email),
                SizedBox(height: 2.w,),

                CustomText(
                  title: "Mobile     :",
                  fontWeight: FontWeight.bold,
                  fontSize: 2.sp,
                  fontColor: Colors.blueGrey,
                ),
                SizedBox(width: 2.w,),

                CustomText(
                  title: "Mobile : +8801626583370",
                  fontWeight: FontWeight.w500,
                  fontSize: 2.sp,
                  fontColor: Colors.blueGrey,
                ),
              ],
            ),
            SizedBox(height: 2.h,),

            //Personal Message
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.message),
                CustomText(
                  title: "Message : ",
                  fontWeight: FontWeight.bold,
                  fontSize: 2.sp,
                  fontColor: Colors.blueGrey,
                ),
                SizedBox(width: 3.w,),

                Expanded(
                  child: CustomText(
                    title: "Personal Message From the TeanentPersonal Message From the TeanentPersonal Message From the TeanentPersonal"
                        " Message From the TeanentPersonal Message From the TeanentPersonal Message From the TeanentPersonal Message From "
                        "the TeanentPersonal Message From the TeanentPersonal Message From the Teanent",
                    fontWeight: FontWeight.w500,
                    fontSize: 2.sp,
                    fontColor: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h,),


            //Approve & Reject button
            Align(
              alignment: Alignment.centerRight,
              child: Obx(() {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (!scheduleController.rejected.value && !scheduleController.accpted.value)
                      InkWell(
                        onTap: () {
                          scheduleController.accpted.value = true;
                          scheduleController.rejected.value = false;
                        },
                        child: const Icon(
                          FontAwesomeIcons.solidSquareCheck,
                          color: Colors.green,
                        ),
                      ),
                    SizedBox(width: 5.w),

                    if (!scheduleController.accpted.value && !scheduleController.rejected.value)
                      InkWell(
                        onTap: () {
                          scheduleController.rejected.value = true;
                          scheduleController.accpted.value = false;
                        },
                        child: const Icon(
                          FontAwesomeIcons.solidTrashCan,
                        ),
                      ),
                    SizedBox(width: 5.w),

                    if (scheduleController.accpted.value)
                      Container(
                        padding: EdgeInsets.all(1.sp),
                        margin: EdgeInsets.only(right: 3.w),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorManager.greenColor),
                        ),
                        child: CustomText(
                          title: "Accepted",
                        ),
                      ),

                    if (scheduleController.rejected.value)
                      Container(
                        padding: EdgeInsets.all(1.sp),
                        margin: EdgeInsets.only(right: 3.w),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorManager.redColor),
                        ),
                        child: CustomText(
                          title: "Rejected",
                        ),
                      ),
                  ],
                );
              }),
            ),
            SizedBox(height: 5.h,),
          ],
        ),
      ),
    );
  }
}
