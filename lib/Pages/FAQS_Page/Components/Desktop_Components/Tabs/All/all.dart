import 'package:flutter/material.dart';
import 'package:property_rental_2/Pages/FAQS_Page/Components/Desktop_Components/Tabs/Buying_A_Property/buying_a_property.dart';

import '../Rental_Search/rental_search.dart';
import '../Sales/sales.dart';

class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        BuyingAProperty(),
        RentalSearch(),
        Sales(),
      ],
    );
  }
}
