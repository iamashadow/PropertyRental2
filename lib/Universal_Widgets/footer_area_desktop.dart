import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_text.dart';
import 'icon_button.dart';

class FooterAreaDesktop extends StatelessWidget {
  const FooterAreaDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.sw*0.030, right: 1.sw*0.030),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1.sw*0.030,),
          //Tags, Title, IconsButtons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Tags & Title
              Row(
                children: [
                  CustomText(
                    title: "PropertyRental",
                    fontColor: const Color(0xFF808080),
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(width: 1.sw*0.010,),
                  CustomText(
                    title: "/   Your Expat Property Brokers",
                    fontColor: const Color(0xFF808080),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),

              //IconButtons
              Row(
                children: [
                  MyIconButton(
                    myIcon: Icons.facebook,
                    IconColor: Colors.blue,
                    onPressed: (){},
                  ),
                  MyIconButton(
                    myIcon: FontAwesomeIcons.linkedin,
                    IconColor: Colors.blue,
                    onPressed: (){},
                  ),
                  MyIconButton(
                    myIcon: FontAwesomeIcons.instagram,
                    IconColor: Colors.pink,
                    onPressed: (){},
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 1.sh*0.050,),

          //Quick Links, Home, Our Team, News, Properties, Our Partners, Contact
          //Property Types, Residential, Apartment, House, KVK Number
          //Property Types, Address, Mobile Number, Email
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Quick Links, Home, Our Team, News, Properties, Our Partners, Contact
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  //Home, Our Team, News
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "Quick Links",
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.white,
                      ),
                      SizedBox(height: 1.sw*0.010,),

                      Row(children: [
                        const Icon(Icons.arrow_right),
                        CustomText(
                          title: "Home",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                      Row(children: [
                        const Icon(Icons.arrow_right),
                        CustomText(
                          title: "Our Team",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                      Row(children: [
                        const Icon(Icons.arrow_right),
                        CustomText(
                          title: "News",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                    ],
                  ),
                  SizedBox(width: 1.sw*0.030,),

                  //Properties, Our Partners, Contact
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 1.sw*0.020,),
                      Row(
                        children: [
                          const Icon(Icons.arrow_right),
                          CustomText(
                            title: "Properties",
                            fontWeight: FontWeight.bold,
                            fontColor: const Color(0xFF808080),
                          )
                        ],),
                      Row(children: [
                        const Icon(Icons.arrow_right),
                        CustomText(
                          title: "Our Partners",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                      Row(children: [
                        const Icon(Icons.arrow_right),
                        CustomText(
                          title: "Contact",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 1.sw*0.030,),

              //Property Types, Residential, Apartment, House, KVK Number
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Property Types
                      CustomText(
                        title: "Property Types",
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.white,
                      ),
                      SizedBox(height: 1.sw*0.010,),

                      //Residential
                      Row(children: [
                        const Icon(Icons.arrow_right),
                        CustomText(
                          title: "Residential",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),

                      //Apartment
                      Row(children: [
                        const Icon(Icons.arrow_right),
                        CustomText(
                          title: "Apartment",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),

                      //House
                      Row(children: [
                        const Icon(Icons.arrow_right),
                        CustomText(
                          title: "House",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                      SizedBox(height: 1.sw*0.030,),

                      //KVK Number
                      CustomText(
                        title: "KVK nummer",
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.white,
                      ),
                      SizedBox(height: 1.sw*0.010,),
                      Row(children: [
                        const Icon(Icons.arrow_right),
                        CustomText(
                          title: "86883674",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                    ],
                  )
                ],
              ),
              SizedBox(width: 1.sw*0.070,),

              //Contact Us, Address, Mobile Number, Email
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Contact Us
                      CustomText(
                        title: "Contact Us",
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.white,
                      ),
                      SizedBox(height: 1.sw*0.010,),

                      //Address
                      Row(children: [
                        const Icon(FontAwesomeIcons.locationArrow, size: 15,),
                        SizedBox(width: 1.sw*0.005,),
                        CustomText(
                          title: "Mirpur-1, Dhaka, Bangladesh",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                      SizedBox(height: 1.sh*0.010,),

                      //Mobile Number
                      Row(children: [
                        const Icon(FontAwesomeIcons.phone, size: 15,),
                        SizedBox(width: 1.sw*0.005,),
                        CustomText(
                          title: "+8801828583383",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                      SizedBox(height: 1.sh*0.010,),

                      //Email
                      Row(children: [
                        const Icon(FontAwesomeIcons.mailchimp, size: 15,),
                        SizedBox(width: 1.sw*0.005,),
                        CustomText(
                          title: "rezajr2k18@gmail.com",
                          fontWeight: FontWeight.bold,
                          fontColor: const Color(0xFF808080),
                        )
                      ],),
                      SizedBox(height: 1.sh*0.010,),

                    ],
                  )
                ],
              ),
            ],
          ),

          //Legal, Privacy Policy, Cookies Policy
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: "Legal",
                fontWeight: FontWeight.bold,
                fontColor: Colors.white,
              ),
              SizedBox(height: 1.sw*0.010,),

              Row(children: [
                const Icon(Icons.arrow_right),
                CustomText(
                  title: "Privacy Policy",
                  fontWeight: FontWeight.bold,
                  fontColor: const Color(0xFF808080),
                )
              ],),
              Row(children: [
                const Icon(Icons.arrow_right),
                CustomText(
                  title: "Cookies Policy",
                  fontWeight: FontWeight.bold,
                  fontColor: const Color(0xFF808080),
                )
              ],),
            ],
          ),
          SizedBox(height: 1.sh*0.030,),


          CustomText(
            title: "© 2023 J&B Makelaars. All rights reserved.",
            fontWeight: FontWeight.bold,
            fontColor: const Color(0xFF808080),
          ),
        ],
      ),
    );
  }
}
