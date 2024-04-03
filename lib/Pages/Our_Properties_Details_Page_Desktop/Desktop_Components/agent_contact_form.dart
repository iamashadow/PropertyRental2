import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Utils/All_List/all_list.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text_form_field.dart';

import '../../../Universal_Widgets/custom_text.dart';
import '../../../Universal_Widgets/our_amazing_service_button_retangle.dart';

class AgentContactForm extends StatelessWidget {
  const AgentContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          //Agent Image
          Container(
            width: 1.sw*0.1,
            height: 1.sh*0.170,
            decoration: BoxDecoration(
              // color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8MHwwfHx8MA%3D%3D"),
                )
            ),
          ),
          SizedBox(height: 1.sh*0.01,),

          //Agent Name
          CustomText(
            title: "Name : ${AllList.OurAgents[0]["name"]}",
            fontWeight: FontWeight.bold,
            fontColor: Colors.black,
          ),
          SizedBox(height: 1.sh*0.01,),

          //Agent Mobile Number
          CustomText(
            title: "Mobile Number : ${AllList.OurAgents[0]["mobileNumber"]}",
            fontWeight: FontWeight.bold,
            fontColor: Colors.black,
          ),
          SizedBox(height: 1.sh*0.01,),

          //Agent Email
          CustomText(
            title: "Email : ${AllList.OurAgents[0]["email"]}",
            fontWeight: FontWeight.bold,
            fontColor: Colors.black,
          ),
          SizedBox(height: 1.sh*0.01,),

          //Client Name
          CustomTextFormField(
            labelText: "Name",
          ),
          SizedBox(height: 1.sh*0.01,),

          //Client Email
          CustomTextFormField(
            labelText: "Email",
          ),
          SizedBox(height: 1.sh*0.01,),

          //Client PhoneNumber
          CustomTextFormField(
            labelText: "Phone Number",
          ),
          SizedBox(height: 1.sh*0.01,),


          //Your Message Text
          Row(
            children: [
              CustomText(
                title: "Your Message",
                fontSize: 3.sp,
              ),
              CustomText(
                title: "*",
                fontSize: 3.sp,
                fontColor: Colors.red,
              ),
            ],
          ),
          SizedBox(height: 1.sh*0.01,),

          //Client Your Message
          CustomTextFormField(
            maxLines: 5,
          ),
          SizedBox(height: 1.sh*0.01,),


          //Submit Button
          OurAmazingServiceButtonRetangle(
            height: 1.sh*0.050,
            // width: 1.sw*0.1,
            buttonColor: const Color(0xFF4b5ea3),
            titleSize: 20,
            titleColor: Colors.white,
            fontWeight: FontWeight.bold,
            buttonTitle: "Submit",
          ),

        ],
      ),
    );
  }
}
