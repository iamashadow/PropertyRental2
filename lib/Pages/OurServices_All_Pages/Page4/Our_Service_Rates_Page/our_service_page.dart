import 'package:flutter/material.dart';
import 'package:property_rental_2/Universal_Widgets/responsive_layout_builder.dart';

import 'UI/Desktop/our_service_desktop_page.dart';
import 'UI/Mobile/our_service_mobile_page.dart';

class OurServiceRatesPage extends StatelessWidget {
  const OurServiceRatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: OurServiceDesktopPage(),
      mobile: OurServiceMobilePage(),
    );
  }
}
