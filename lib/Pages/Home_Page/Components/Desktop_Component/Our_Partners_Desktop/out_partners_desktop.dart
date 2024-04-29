import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Utils/All_List/all_list.dart';

class OurPartnersDesktop extends StatelessWidget {
  const OurPartnersDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: AllList.OurPartnesList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 3,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
        ),
        itemBuilder: (context, index){
          return Card(
            child: Container(
              height: 1.sh*0.005,
              width: 1.sw*0.010,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(AllList.OurPartnesList[index]),
                )
              ),
            ),
          );
        },
    );
  }
}
