import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:property_rental_2/Utils/All_Static_Texts/all_static_text.dart';

import '../../../faqs_controller.dart';
import '../Tabs/All/all.dart';
import '../Tabs/Buying_A_Property/buying_a_property.dart';
import '../Tabs/Rental_Search/rental_search.dart';
import '../Tabs/Sales/sales.dart';

class BasicQuestions extends StatefulWidget {
  const BasicQuestions({super.key});

  @override
  State<BasicQuestions> createState() => _BasicQuestionsState();
}

class _BasicQuestionsState extends State<BasicQuestions> with SingleTickerProviderStateMixin {


  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  final faqsController = Get.put(FaqsController());


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Container(
        // height: MediaQuery.of(context).size.height - AppBar().preferredSize.height,
        child: Column(
            children: [

              //TabBar
              Container(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: tabController,
                    onTap: (value){
                      faqsController.tabBarIndex.value = value;
                    },
                    isScrollable: true,
                    unselectedLabelColor: Colors.blueGrey,
                    labelPadding: EdgeInsets.only(left: 0, right: 20.w),
                    tabs: const [
                      Tab(text: "All",),
                      Tab(text: "Buying A Property",),
                      Tab(text: "Rental Search",),
                      Tab(text: "Sales",),
                    ]
                ),
              ),

              //TabBarView
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    All(),
                    BuyingAProperty(),
                    RentalSearch(),
                    Sales(),
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

}
