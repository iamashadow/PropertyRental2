import 'package:flutter/material.dart';

import '../../../../Universal_Widgets/responsive_layout_builder.dart';
import 'UI/Our_Rental_Service_Desktop_Page/our_rental_service_desktop_page.dart';
import 'UI/Our_Rental_Service_Mobile_Page/our_rental_service_mobile_page.dart';

class OurRentalServicePage extends StatelessWidget {
  const OurRentalServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: OurRentalServiceDesktop(),
      mobile: OurRentalServiceMobile(),
    );
  }
}
