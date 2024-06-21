import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Pages/Home_Page/home_page.dart';
import 'package:property_rental_2/Utils/All_List/all_list.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text_form_field.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Universal_Widgets/custom_text.dart';
import '../../../Universal_Widgets/our_amazing_service_button_retangle.dart';

class AgentContactForm extends StatefulWidget {
  const AgentContactForm({super.key});

  @override
  State<AgentContactForm> createState() => _AgentContactFormState();
}

class _AgentContactFormState extends State<AgentContactForm> {

  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //Agent Image
          Container(
            width: 1.sw*0.1,
            height: 1.sh*0.170,
            decoration: BoxDecoration(
              // color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
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

          /*
          User Input area
           */
          // //Client Name
          // CustomTextFormField(
          //   labelText: "Name",
          // ),
          // SizedBox(height: 1.sh*0.01,),
          //
          // //Client Email
          // CustomTextFormField(
          //   labelText: "Email",
          // ),
          // SizedBox(height: 1.sh*0.01,),
          //
          // //Client PhoneNumber
          // CustomTextFormField(
          //   labelText: "Phone Number",
          // ),
          // SizedBox(height: 1.sh*0.01,),
          //
          //
          // //Your Message Text
          // Row(
          //   children: [
          //     CustomText(
          //       title: "Your Message",
          //       fontSize: 3.sp,
          //     ),
          //     CustomText(
          //       title: "*",
          //       fontSize: 3.sp,
          //       fontColor: Colors.red,
          //     ),
          //   ],
          // ),
          // SizedBox(height: 1.sh*0.01,),
          //
          // //Client Your Message
          // CustomTextFormField(
          //   maxLines: 5,
          // ),
          // SizedBox(height: 1.sh*0.01,),


          //Submit Button
          // OurAmazingServiceButtonRetangle(
          //   height: 1.sh*0.050,
          //   // width: 1.sw*0.1,
          //   buttonColor: const Color(0xFF4b5ea3),
          //   titleSize: 20,
          //   titleColor: Colors.white,
          //   fontWeight: FontWeight.bold,
          //   buttonTitle: "Submit",
          // ),

          /*
          Contact On
          -> WhatsApp
          -> Email
          -> SIM
           */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  launchUrl(Uri.parse("https://wa.me/+8801828583383"));
                },
                child: Card(
                  surfaceTintColor: ColorManager.whiteColor,
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(2.sp),
                    child: Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 1.w,),
                        CustomText(
                          fontColor: Colors.black,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.start,
                          title: "Contact On WhatsApp",
                        )
                      ],
                    ),
                  ),
                ),
              ),

              InkWell(
                onTap: (){
                  launchUrl(Uri(
                    scheme: "mailto",
                    path: "rezajr2k18@gmail.com",
                    query: "Send a Mail to Imtiaz Chowdhury",
                  ));
                },
                child: Card(
                  surfaceTintColor: ColorManager.whiteColor,
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(2.sp),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.email_outlined,
                          color: Colors.red,
                        ),
                        SizedBox(width: 1.w,),
                        CustomText(
                          fontColor: Colors.black,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.start,
                          title: "Contact On Email",
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h,),

          InkWell(
            onTap: (){
              launchUrl(Uri(
                scheme: "tel",
                path: "tel:+8801828583383", // Replace with the phone number of the contact
              ));
            },
            child: Card(
              color: ColorManager.kasmiriBlue,
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(3.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      FontAwesomeIcons.phoneVolume,
                      color: Colors.green,
                    ),
                    SizedBox(width: 1.w,),
                    CustomText(
                      fontColor: Colors.white,
                      fontSize: 3.sp,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.start,
                      title: "Contact On SIM",
                    )
                  ],
                ),
              ),
            ),
          ),

          //Book A SLot
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: CustomText(
                      title: "Select meeting time",
                      fontColor: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () async {
                            DateTime? datePicked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2101),
                            );
                            if (datePicked != null) {
                              setState(() {
                                selectedDate = datePicked;
                              });
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CustomText(
                              title: selectedDate != null
                                  ? "Selected Date: ${selectedDate!.toLocal()}".split(' ')[0]
                                  : "Select Date",
                              fontColor: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        SizedBox(
                          height: 200, // Set fixed height for content
                          width: double.maxFinite,
                          child: ListView.builder(
                            itemCount: AllList.timeSlotList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // margin: const EdgeInsets.symmetric(vertical: 5.0), // Add margin for spacing
                                    padding: const EdgeInsets.all(20),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center, // Center the text
                                    child: CustomText(
                                      title: AllList.timeSlotList[index],
                                      fontColor: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                ],
                              );
                            },
                          ),
                        ),


                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          // Submit action
                        },
                        child: CustomText(
                          title: "Submit",
                          fontColor: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: CustomText(
                          title: "Cancel",
                          fontColor: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Card(
              color: Colors.blue,
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Use EdgeInsets instead of sp
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.bookmark,
                      color: Colors.amber,
                    ),
                    const SizedBox(width: 8.0), // Use EdgeInsets instead of sp
                    CustomText(
                      title: "Book a meeting",
                      fontColor: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
          ),




        ],
      ),
    );
  }
}



//
// class AgentContactForm extends StatefulWidget {
//   const AgentContactForm({super.key});
//
//   @override
//   _AgentContactFormState createState() => _AgentContactFormState();
// }
//
// class _AgentContactFormState extends State<AgentContactForm> {
//   DateTime? selectedDate;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // ... other widgets
//
//           //Book A Slot
//           InkWell(
//             onTap: () {
//               showDialog(
//                 context: context,
//                 builder: (context) {
//                   return AlertDialog(
//                     title: CustomText(
//                       title: "Select meeting time",
//                       fontColor: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     content: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Container(
//                           height: 200, // Set fixed height for content
//                           width: double.maxFinite,
//                           child: ListView.builder(
//                             itemCount: AllList.timeSlotList.length,
//                             scrollDirection: Axis.horizontal,
//                             itemBuilder: (context, index) {
//                               return Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     padding: const EdgeInsets.all(20),
//                                     height: 100,
//                                     decoration: BoxDecoration(
//                                       color: Colors.blue,
//                                       borderRadius: BorderRadius.circular(10),
//                                     ),
//                                     alignment: Alignment.center, // Center the text
//                                     child: CustomText(
//                                       title: AllList.timeSlotList[index],
//                                       fontColor: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const SizedBox(width: 10),
//                                 ],
//                               );
//                             },
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         InkWell(
//                           onTap: () async {
//                             DateTime? datePicked = await showDatePicker(
//                               context: context,
//                               initialDate: DateTime.now(),
//                               firstDate: DateTime(1950, 1, 1),
//                               lastDate: DateTime(2101),
//                             );
//                             if (datePicked != null) {
//                               setState(() {
//                                 selectedDate = datePicked;
//                               });
//                             }
//                           },
//                           child: Container(
//                             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                             decoration: BoxDecoration(
//                               color: Colors.blue,
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: CustomText(
//                               title: selectedDate != null
//                                   ? "Selected Date: ${selectedDate!.toLocal()}".split(' ')[0]
//                                   : "Select Date",
//                               fontColor: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     actions: [
//                       TextButton(
//                         onPressed: () {
//                           // Submit action
//                           Navigator.pop(context);
//                         },
//                         child: CustomText(
//                           title: "Submit",
//                           fontColor: Colors.blue,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         child: CustomText(
//                           title: "Cancel",
//                           fontColor: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               );
//             },
//             child: Card(
//               color: Colors.blue,
//               elevation: 2,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0), // Use EdgeInsets instead of sp
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Icon(
//                       Icons.bookmark,
//                       color: Colors.amber,
//                     ),
//                     const SizedBox(width: 8.0), // Use EdgeInsets instead of sp
//                     CustomText(
//                       title: "Book a meeting",
//                       fontColor: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
