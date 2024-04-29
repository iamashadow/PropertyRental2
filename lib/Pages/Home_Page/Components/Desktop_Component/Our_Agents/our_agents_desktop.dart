import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Utils/All_List/all_list.dart';
import '../../../../../Universal_Widgets/custom_text.dart';

class OurAgentsDesktop extends StatelessWidget {
  const OurAgentsDesktop({super.key});

  @override
  Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        SizedBox(height: 1.sh*0.1,),
        CustomText(
          title: "Meet Our",
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontColor: const Color(0xFF4B5EA3),
        ),
        CustomText(
          title: "Agents",
          fontSize: 35,
          fontWeight: FontWeight.bold,
          fontColor: Colors.black,
        ),
        CustomText(
          title: "Get in touch with our professional real estate agents.",
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontColor: Colors.blueGrey,
        ),
        SizedBox(height: 1.sh*0.15,),

        GridView.builder(

          shrinkWrap: true,
          itemCount: AllList.OurAgents.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 90,
              childAspectRatio: 2.7,
            ),
            itemBuilder: (context, index){
            return Card(
                child: Container(
                  // width: 1.sw*0.2,
                  // height: 1.sh*0.3,
                  color: Colors.white,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [

                      //Profile Picture
                      Positioned(
                        top: -70,
                        left: 240,
                        child: Card(
                          child: Container(
                            width: 1.sw*0.1,
                            height: 1.sh*0.170,
                            decoration: BoxDecoration(
                                // color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(AllList.OurAgents[index]["profilePicture"]!)
                              )
                            ),
                          ),
                        ),
                      ),

                      //Name
                      Positioned(
                        left: 250,
                          top: 150,
                          child: CustomText(
                            title: AllList.OurAgents[index]["name"],
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.black,
                          ),
                      ),
                      //Mobile Number
                      Positioned(
                        left: 250,
                        top: 170,
                          child: CustomText(
                            title: AllList.OurAgents[index]["mobileNumber"],
                            fontColor: Colors.deepPurpleAccent,
                          ),
                      ),
                      //Email
                      Positioned(
                        left: 250,
                        top: 190,
                          child: CustomText(
                            title: AllList.OurAgents[index]["email"],
                            fontColor: Colors.blueGrey,
                          ),
                      ),



                    ],
                  ),
                ),
            );
            },
        ),


      ],
    );
  }
}
