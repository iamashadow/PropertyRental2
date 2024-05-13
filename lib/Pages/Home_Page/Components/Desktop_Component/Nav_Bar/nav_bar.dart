import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/Contact_Us_Page/contact_us_page.dart';
import '../../../../../Universal_Widgets/custom_text.dart';
import '../../../../About_Us_All_Pages/Page1/About_Us_Our_Story_Page/about_us_our_story_page.dart';
import '../../../../About_Us_All_Pages/Page3/Our_Partners/our_partners.dart';
import '../../../../Contact_Us_Page/UI/Desktop/contact_us_desktop_page.dart';
import '../../../../FAQS_Page/faqs_page.dart';
import '../../../../LandLord_Sector/Page2/Land_Lord_Properties/land_lord_properties.dart';
import '../../../../Login_Page/login_page.dart';
import '../../../../OurServices_All_Pages/Page1/Our_Buying_Service_Page/our_buying_service_page.dart';
import '../../../../OurServices_All_Pages/Page2/Our_Sales_Service_Page/our_sales_service_page.dart';
import '../../../../OurServices_All_Pages/Page3/Our_Rental_Service_Page/our_rental_service_page.dart';
import '../../../../About_Us_All_Pages/Page2/Team_Page/Our_Team_Page/our_team_page.dart';
import '../../../../Properties_All_Page/Page2/For_Rent_Page/for_rent_page.dart';
import '../../../../SignUp_Page/sign_up_page.dart';
import '../../../home_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {


  // var univarsalControllar = Get.put(UniversalGetxController());


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: 1.sh*0.030,
      width: 1.sw,
      child: Padding(
        padding: EdgeInsets.only(left: 1.sw*0.2, right: 1.sw*0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(),
                    ),
                );
              },
              child: CustomText(
                title: "PropertyRental",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontColor: Colors.blue,
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => ForRentPage(),
                        ),
                    );
                  },
                  child: CustomText(
                    title: "Properties",
                    fontWeight: FontWeight.bold,
                    fontColor: Colors.blue,
                  ),
                ),
                SizedBox(width: size.width*0.010,),



                //About Us Page
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return AboutUsOurStoryPage();
                          // OurPartnersPage();
                        // AboutUsOurStoryPage();
                        // OurTeamPage()
                      },


                      ),
                    );
                  },
                  child: CustomText(
                    title: "About Us",
                    fontWeight: FontWeight.bold,
                    fontColor: Colors.blue,
                  ),
                ),
                SizedBox(width: size.width*0.010,),

                /*
                Our Service Page
                 */
                // InkWell(
                //   onTap: (){
                //     Navigator.push(context,
                //         MaterialPageRoute(
                //             builder: (context) {
                //               return OurSalesServicePage();
                //                 //OurBuyingServicePage();
                //                 // OurSalesServicePage();
                //                 // OurRentalServicePage();
                //               // OurServicePage();
                //             }
                //         ),
                //     );
                //   },
                //   child: CustomText(
                //     title: "Our Services",
                //     fontWeight: FontWeight.bold,
                //     fontColor: Colors.blue,
                //   ),
                // ),
                // SizedBox(width: size.width*0.010,),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FaqsPage()),
                    );
                  },
                  child: CustomText(
                    title: "FAQs",
                    fontWeight: FontWeight.bold,
                    fontColor: Colors.blue,
                  ),
                ),
                SizedBox(width: size.width*0.010,),

                // Obx(() => univarsalControllar.isUserLogedIn.value ?
                // TextButton(
                //   onPressed: (){
                //     univarsalControllar.isUserLogedIn.value != univarsalControllar.isUserLogedIn.value;
                //     print(univarsalControllar.isUserLogedIn.value);
                //     Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => HomePage()),
                //     );
                //
                //   },
                //   child: CustomText(
                //     title: "Log Out",
                //     fontWeight: FontWeight.bold,
                //     fontColor: Colors.black,
                //   ),
                // ) :
                // Row(
                //   children: [
                //     ElevatedButton(
                //       onPressed: (){
                //         Navigator.push(context,
                //           MaterialPageRoute(builder: (context) => LoginPage()),
                //         );
                //       },
                //       style: ButtonStyle(
                //         backgroundColor: MaterialStateProperty.all<Color>(
                //             Colors.blue
                //         ),
                //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //           RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                //           ),
                //         ),
                //       ),
                //       child: CustomText(
                //         title: "LogIn",
                //         fontWeight: FontWeight.bold,
                //         fontColor: Colors.white,
                //       ),
                //     ),
                //     SizedBox(width: size.width*0.010,),
                //
                //     TextButton(
                //       onPressed: (){
                //         Navigator.push(context,
                //           MaterialPageRoute(builder: (context) => SignUpPage()),
                //         );
                //
                //       },
                //       child: CustomText(
                //         title: "Sign Up",
                //         fontWeight: FontWeight.bold,
                //         fontColor: Colors.black,
                //       ),
                //     ),
                //     SizedBox(width: size.width*0.010,),
                //   ],
                // )),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactUsPage()),
                    );
                  },
                  child: CustomText(
                    title: "Contact +8801626583370",
                    fontWeight: FontWeight.bold,
                    fontColor: Colors.blue,
                  ),
                ),
                SizedBox(width: size.width*0.010,),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LandLordProperties()),
                    );
                  },
                  child: CustomText(
                    title: "LandLord Sector",
                    fontWeight: FontWeight.bold,
                    fontColor: Colors.blue,
                  ),
                ),
                SizedBox(width: size.width*0.010,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
