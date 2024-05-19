import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../../Utils/All_List/all_list.dart';
import '../../../../../../../../Utils/Color_Manager/colo_manager.dart';

class DayListComponent extends StatelessWidget {
  const DayListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 30.h,
      child: ListView.builder(
        shrinkWrap: true,
          itemCount: AllList.daysList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return Row(
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 3.h, bottom: 3.h),
                      child: CustomText(
                        fontColor: ColorManager.blackColor,
                        fontSize: 3.sp,
                        fontWeight: FontWeight.w500,
                        title: AllList.daysList[index],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 3.w,),
              ],
            );
          }
      ),
    );
  }
}
