import 'package:flutter/material.dart';
import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Desktop/our_buying_service_desktop_page.dart';
import 'UI/Mobuile/our_buying_service_mobile_page.dart';

class OurBuyingServicePage extends StatelessWidget {
  const OurBuyingServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: OurBuyingServiceDesktopPage(),
      mobile: OurBuyingServiceMobilePage(),
    );
  }
}
