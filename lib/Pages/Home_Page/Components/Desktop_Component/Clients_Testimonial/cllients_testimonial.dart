import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../All_List/all_list.dart';
import '../../../../../Universal_Widgets/custom_text.dart';


class ClientsTestimonialDesktop extends StatelessWidget {
  const ClientsTestimonialDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 1.sh*0.030,),
        CustomText(
          title: "What our clients have to say",
          fontColor: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        CustomText(
          title: "Testimonials",
          fontColor: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        SizedBox(height: 1.sh*0.030,),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: AllList.ClientsTestimonalList.length,
            itemBuilder: (context, index){
              return Card(
                elevation: 1,
                color: Colors.white,
                child: Container(
                  width: 1.sw*0.1,
                  // height: 1.sh*0.010,
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      //Avater Pic
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(AllList.ClientsTestimonalList[index]["avatar"]!),
                      ),
                      const SizedBox(height: 10,),
          
                      //Name
                      CustomText(
                        title: AllList.ClientsTestimonalList[index]["name"]!,
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.black,
                      ),
                      const SizedBox(height: 10,),
          
                      //Date
                      CustomText(
                        title: AllList.ClientsTestimonalList[index]["date"]!,
                        fontColor: Colors.blueGrey,
                      ),
                      const SizedBox(height: 10,),
          
                      //Title
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(FontAwesomeIcons.message, color: Colors.red, size: 10,),
                          const SizedBox(width: 5,),
                          CustomText(
                            title: AllList.ClientsTestimonalList[index]["title"]!,
                            fontWeight: FontWeight.bold,
                            fontColor: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
          
                      //Description
                      CustomText(
                        title: AllList.ClientsTestimonalList[index]["description"]!,
                        fontColor: Colors.blueGrey,
                        txtOverflow: TextOverflow.ellipsis,
                        mxLine: 5,
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context,_) => const SizedBox(width: 15,),
          ),
        ),
        SizedBox(height: 1.sh*0.030,),
      ],
    );
  }
}
